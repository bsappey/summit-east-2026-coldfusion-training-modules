<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Application.cfc (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Application.cfc (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Application.cfc (simplified) ---&gt;
&lt;cfcomponent&gt;
    &lt;cffunction name="onApplicationStart" returntype="boolean" access="public"&gt;
        &lt;cfset application.ds = "CFTrainingDSN"&gt;
        &lt;cfset application.userService = new services.UserService(application.ds)&gt;
        &lt;cfreturn true&gt;
    &lt;/cffunction&gt;
    &lt;cffunction name="onRequestStart" returntype="boolean" access="public"&gt;
        &lt;cfargument name="targetPage" type="string"&gt;
        &lt;!--- auth, etc. ---&gt;
        &lt;cfreturn true&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

