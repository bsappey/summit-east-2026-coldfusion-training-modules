<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Simple CFC (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Simple CFC (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- components/Person.cfc ---&gt;
&lt;cfcomponent&gt;
    &lt;cfproperty name="firstName" type="string"&gt;
    &lt;cfproperty name="lastName" type="string"&gt;

    &lt;cffunction name="init" returntype="Person" access="public"&gt;
        &lt;cfargument name="firstName" type="string" required="true"&gt;
        &lt;cfargument name="lastName" type="string" required="true"&gt;
        &lt;cfset variables.firstName = arguments.firstName&gt;
        &lt;cfset variables.lastName = arguments.lastName&gt;
        &lt;cfreturn this&gt;
    &lt;/cffunction&gt;

    &lt;cffunction name="getFullName" returntype="string" access="public"&gt;
        &lt;cfreturn variables.firstName &amp; " " &amp; variables.lastName&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

