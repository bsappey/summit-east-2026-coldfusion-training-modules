<!---
  Auto-generated from modules-data.js (getModule1Data)
  codeTitle: CFC encapsulation with variables and private methods (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>CFC encapsulation with variables and private methods (CF 2021+)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Encapsulation: variables + cffunction access (CF 2021+) - typical .cfc body ---&gt;
&lt;cfcomponent accessors="no"&gt;
    &lt;cfproperty name="label" type="string" hint="Metadata; use accessors=true if you want implicit get/set"&gt;

    &lt;cffunction name="init" returntype="any" access="public"&gt;
        &lt;cfargument name="label" type="string" required="false" default=""&gt;
        &lt;cfset variables.label = arguments.label&gt;
        &lt;cfset variables.secretToken = ""&gt;
        &lt;cfreturn this&gt;
    &lt;/cffunction&gt;

    &lt;cffunction name="getLabel" returntype="string" access="public"&gt;
        &lt;cfreturn normalizeLabel()&gt;
    &lt;/cffunction&gt;

    &lt;!--- Only callable from inside this CFC ---&gt;
    &lt;cffunction name="normalizeLabel" returntype="string" access="private"&gt;
        &lt;cfreturn trim(variables.label)&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

