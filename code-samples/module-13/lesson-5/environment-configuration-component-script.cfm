<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Environment Configuration Component
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Environment Configuration Component (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">// Environment Configuration Component (CF 2021+)
component {
    // Load configuration from environment variables
    variables.config = {
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
            enabled: getEnvironmentVariable("CACHE_ENABLED", "true") == "true",
            ttl: val(getEnvironmentVariable("CACHE_TTL", "3600"))
        }
    };
    
    function getConfig() {
        return variables.config;
    }
    
    function getDatabaseDSN() {
        return variables.config.database.name;
    }
    
    function isProduction() {
        return variables.config.environment == "production";
    }
}</pre>

