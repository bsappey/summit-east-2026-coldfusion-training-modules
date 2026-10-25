<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: accessors="true" (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>accessors=&quot;true&quot; (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- accessors="true" ---&gt;
&lt;cfcomponent accessors="true"&gt;
    &lt;cfproperty name="firstName" type="string"&gt;
    &lt;cfproperty name="lastName" type="string"&gt;
    &lt;cfproperty name="createdAt" type="date" getter="true" setter="false"&gt;

    &lt;cffunction name="init" returntype="User" access="public"&gt;
        &lt;cfset setFirstName("")&gt;
        &lt;cfset setLastName("")&gt;
        &lt;cfset variables.createdAt = now()&gt;
        &lt;cfreturn this&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

