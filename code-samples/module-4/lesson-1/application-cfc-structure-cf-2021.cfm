<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Application.cfc Structure (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Application.cfc Structure (CF 2021+)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;cfcomponent&gt;
    &lt;!--- Application Settings ---&gt;
    &lt;cfset this.name = "MyApplication"&gt;
    &lt;cfset this.applicationTimeout = CreateTimeSpan(0, 2, 0, 0)&gt;
    &lt;cfset this.sessionManagement = true&gt;
    &lt;cfset this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0)&gt;
    
    &lt;!--- Application Start ---&gt;
    &lt;cffunction name="onApplicationStart" returntype="boolean"&gt;
        &lt;cfset Application.initialized = true&gt;
        &lt;cfset Application.startTime = Now()&gt;
        &lt;cfreturn true&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- Request Start ---&gt;
    &lt;cffunction name="onRequestStart" returntype="boolean"&gt;
        &lt;cfargument name="targetPage" type="string" required="true"&gt;
        &lt;!--- Pre-request logic here ---&gt;
        &lt;cfreturn true&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- Request End ---&gt;
    &lt;cffunction name="onRequestEnd" returntype="void"&gt;
        &lt;cfargument name="targetPage" type="string" required="true"&gt;
        &lt;!--- Post-request logic here ---&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

