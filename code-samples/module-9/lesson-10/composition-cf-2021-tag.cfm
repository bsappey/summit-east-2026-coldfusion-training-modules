<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Composition (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Composition (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Composition: service has a logger ---&gt;
&lt;cfcomponent&gt;
    &lt;cffunction name="init" returntype="OrderService" access="public"&gt;
        &lt;cfargument name="logger" type="Logger" required="true"&gt;
        &lt;cfset variables.logger = arguments.logger&gt;
        &lt;cfreturn this&gt;
    &lt;/cffunction&gt;
    &lt;cffunction name="placeOrder" returntype="struct" access="public"&gt;
        &lt;cfargument name="order" type="struct" required="true"&gt;
        &lt;cfset variables.logger.info("Placing order")&gt;
        &lt;!--- ... ---&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

