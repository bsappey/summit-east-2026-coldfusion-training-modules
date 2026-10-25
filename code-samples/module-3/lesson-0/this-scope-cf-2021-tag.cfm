<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: This Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>This Scope (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- This Scope Example ---&gt;
&lt;cfcomponent&gt;
    &lt;cfset this.name = "UserService"&gt;
    &lt;cfset this.version = "1.0"&gt;
    &lt;cfset variables.privateData = "hidden"&gt;
    
    &lt;cffunction name="getInfo" returntype="struct"&gt;
        &lt;cfreturn {
            name: this.name,
            version: this.version
        }&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

