<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Environment Configuration Component
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Environment Configuration Component (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Environment Configuration Component (CF 2021+) ---&gt;
&lt;cfcomponent&gt;
    &lt;!--- Load configuration from environment variables ---&gt;
    &lt;cfset variables.config = {
        environment: getEnvironmentVariable("APP_ENV", "development"),
        database: {
            host: getEnvironmentVariable("DB_HOST", "127.0.0.1"),
            name: getEnvironmentVariable("DB_NAME", "myapp"),
            user: getEnvironmentVariable("DB_USER", "cfuser"),
            password: getEnvironmentVariable("DB_PASSWORD", "")
        },
        api: {
            baseUrl: getEnvironmentVariable("API_BASE_URL", "http://127.0.0.1:8500"),
            apiKey: getEnvironmentVariable("API_KEY", "")
        },
        cache: {
            enabled: getEnvironmentVariable("CACHE_ENABLED", "true") EQ "true",
            ttl: val(getEnvironmentVariable("CACHE_TTL", "3600"))
        }
    }&gt;
    
    &lt;cffunction name="getConfig" returntype="struct"&gt;
        &lt;cfreturn variables.config&gt;
    &lt;/cffunction&gt;
    
    &lt;cffunction name="getDatabaseDSN" returntype="string"&gt;
        &lt;cfreturn variables.config.database.name&gt;
    &lt;/cffunction&gt;
    
    &lt;cffunction name="isProduction" returntype="boolean"&gt;
        &lt;cfreturn variables.config.environment EQ "production"&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

