/**
 * Root application: embedded Apache Derby training datasource (JDBC).
 * Path: use getCurrentTemplatePath() (avoid expandPath quirks in Application.cfc per Adobe guidance).
 * Bootstrap: ensureDatabase runs in onRequestStart once so programmatic datasources are registered before first query.
 * ORM: Hibernate entities in resources/orm/entities (Module 24); dialect Derby; dbcreate none.
 * Verified: Adobe Application.cfc; Apache Derby EmbeddedDriver; Adobe configure ORM.
 */
component {

	this.name = "ColdFusionTraining";
	// Web root = directory containing this file; Derby JDBC path uses forward slashes on Windows.
	variables.rootDir = getDirectoryFromPath(getCurrentTemplatePath());
	variables.dbPath = replace(variables.rootDir & "resources/database/Derby/", "\", "/", "all");
	variables.jdbcUrl = "jdbc:derby:" & variables.dbPath & ";create=true;MaxPooledStatements=300";

	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 45, 0);

	// Adobe CF: use class + connectionString (and url for compatibility across versions).
	this.datasources = {
		CFTrainingDSN: {
			class: "org.apache.derby.jdbc.EmbeddedDriver",
			connectionString: variables.jdbcUrl,
			url: variables.jdbcUrl
		}
	};
	this.datasource = "CFTrainingDSN";

	// ORM (Module 24): persistent CFCs in resources/orm/entities; Derby matches training DB (buildDatabase.cfm).
	// dbcreate = none - schema is owned by JDBC seed scripts, not Hibernate.
	this.ormEnabled = true;
	this.ormsettings = {
		cfclocation: [ replace(variables.rootDir & "resources/orm/entities", "\", "/", "all") ],
		dialect: "Derby",
		dbcreate: "none",
		logSQL: false,
		flushAtRequestEnd: true
	};

	public boolean function onApplicationStart() {
		include "config/training-visibility.cfm";
		application.trainingVisibility = request._cfTrainingVisibility;
		loadAiProviderKeys();
		return true;
	}

	/**
	 * Load OpenAI (and optional Anthropic/Gemini) keys from env or gitignored local file.
	 * The committed file keeps paste-the-key-here. Replace that locally. See SETUP.md.
	 */
	private void function loadAiProviderKeys() {
		var envKey = "";
		try {
			var rawEnv = createObject("java", "java.lang.System").getenv("CF_TRAINING_OPENAI_API_KEY");
			if (!isNull(rawEnv) && len(trim(toString(rawEnv)))) {
				envKey = trim(toString(rawEnv));
			}
		} catch (any ignoreEnv) {
			envKey = "";
		}
		application.apiKey = envKey;
		application.anthropicApiKey = "";
		application.geminiApiKey = "";
		var secretsPath = variables.rootDir & "config/local-ai-secrets.cfm";
		if (fileExists(secretsPath)) {
			include "config/local-ai-secrets.cfm";
		}
		if (listFindNoCase("paste-the-key-here,YOUR_OPENAI_API_KEY", trim(toString(application.apiKey)))) {
			application.apiKey = "";
		}
		if (!len(trim(toString(application.apiKey))) && len(envKey)) {
			application.apiKey = envKey;
		}
	}

	private boolean function isModuleHidden(required numeric moduleId) {
		if (!structKeyExists(application, "trainingVisibility")) {
			include "config/training-visibility.cfm";
			application.trainingVisibility = request._cfTrainingVisibility;
		}
		return arrayFind(application.trainingVisibility.hiddenModuleIds, arguments.moduleId) > 0;
	}

	private void function send404(string targetPage = "") {
		var depthPath = len(trim(arguments.targetPage)) ? replace(arguments.targetPage, "\", "/", "all") : "";
		var scriptPath = reReplace(replace(cgi.script_name, "\", "/", "all"), "^/+|/+$", "", "all");
		var depthFromTarget = 0;
		if (len(depthPath) && find("/", depthPath)) {
			depthFromTarget = listLen(depthPath, "/") - 1;
		}
		var depthFromScript = 0;
		if (len(scriptPath) && find("/", scriptPath)) {
			depthFromScript = listLen(scriptPath, "/") - 1;
		}
		var depth = max(depthFromTarget, depthFromScript);
		request._404Prefix = depth > 0 ? repeatString("../", depth) : "";
		cfheader(statusCode = 404);
		include "404.cfm";
		abort;
	}

	private numeric function extractModuleIdFromPath(required string normalizedPath, required string pattern) {
		var match = reFind(pattern, arguments.normalizedPath, 1, true);
		if (structKeyExists(match, "len") && arrayLen(match.len) >= 2 && match.len[2] > 0) {
			return val(mid(arguments.normalizedPath, match.pos[2], match.len[2]));
		}
		return -1;
	}

	/**
	 * Create seed DB after this.datasources is active (avoids "datasource not found" during app startup on some engines).
	 * AI code samples (modules 14-24): if application.apiKey is empty, return a friendly page instead of HTTP 500 for
	 * samples that require a provider key - except whitelisted snippets that only document install/structure.
	 */
	public boolean function onRequestStart(required string targetPage) {
		var normalizedPath = replace(arguments.targetPage, "\", "/", "all");
		var moduleId = extractModuleIdFromPath(normalizedPath, "modules/module-([0-9]+)\.cfm$");
		if (moduleId >= 0 && isModuleHidden(moduleId)) {
			send404(normalizedPath);
			return false;
		}
		var quizModuleId = extractModuleIdFromPath(normalizedPath, "quizzes/quiz-([0-9]+)\.cfm$");
		if (quizModuleId >= 0 && isModuleHidden(quizModuleId)) {
			send404(normalizedPath);
			return false;
		}

		if (!structKeyExists(application, "_cfTrainingDbInitialized")) {
			lock scope="application" type="exclusive" timeout="60" {
				if (!structKeyExists(application, "_cfTrainingDbInitialized")) {
					include "resources/database/ensureDatabase.cfm";
					application._cfTrainingDbInitialized = true;
				}
			}
		}
		if (!structKeyExists(application, "apiKey") || !len(trim(toString(application.apiKey)))) {
			loadAiProviderKeys();
		}
		// Shared chat config for Agent samples that expect application.chatConfig
		if (len(trim(toString(application.apiKey))) && (
			!structKeyExists(application, "chatConfig") || !isStruct(application.chatConfig)
		)) {
			application.chatConfig = {
				provider: "openAi",
				apiKey: application.apiKey,
				modelName: "gpt-4o-mini",
				temperature: 0.7
			};
		}
		// AI track is modules 14-24 (module 13 is Advanced Topics / REST-Docker)
		if (findNoCase("code-samples/module-", normalizedPath) && reFindNoCase("code-samples/module-(1[4-9]|2[0-4])/", normalizedPath) > 0) {
			// Samples that run without a live API key (docs, in-memory vector demos, structure-only)
			var allowWithoutKey = (reFindNoCase(
				"installing-ai-package|word-based-chunking|guardrail-cfc-contract|metrictype|add-and-addall|stdio-transport|readresource|getprompt",
				normalizedPath
			) > 0);
			if (!allowWithoutKey && len(trim(toString(application.apiKey))) == 0) {
				cfcontent(type = "text/html; charset=utf-8");
				writeOutput('<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AI sample - configuration</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-4">
	<div class="alert alert-info" role="status">
		<p class="mb-1"><strong>AI sample not executed.</strong></p>
		<p class="mb-0">Open <code>config/local-ai-secrets.cfm</code>, replace <code>paste-the-key-here</code> on <code>application.apiKey</code>, save, and refresh this page. This placeholder returns HTTP 200 for local smoke tests when no key is configured.</p>
	</div>
	<p><a class="btn btn-primary" href="/index.cfm">Home</a></p>
</body>
</html>');
				return false;
			}
		}
		return true;
	}

	/**
	 * Missing .cfm/.cfc templates (Adobe onMissingTemplate).
	 * onRequestStart is not invoked for this handler.
	 */
	public boolean function onMissingTemplate(required string targetPage) {
		try {
			send404(arguments.targetPage);
			return true;
		} catch (any e) {
			return false;
		}
	}

}
