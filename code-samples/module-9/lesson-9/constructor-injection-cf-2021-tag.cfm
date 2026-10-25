<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Constructor injection (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Constructor injection (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- OrderService depends on OrderGateway ---&gt;
&lt;cfcomponent&gt;
    &lt;cffunction name="init" returntype="OrderService" access="public"&gt;
        &lt;cfargument name="orderGateway" type="OrderGateway" required="true"&gt;
        &lt;cfargument name="userService" type="UserService" required="false"&gt;
        &lt;cfset variables.orderGateway = arguments.orderGateway&gt;
        &lt;cfset variables.userService = arguments.userService&gt;
        &lt;cfreturn this&gt;
    &lt;/cffunction&gt;
    &lt;cffunction name="getOrder" returntype="query" access="public"&gt;
        &lt;cfargument name="orderId" type="numeric" required="true"&gt;
        &lt;cfreturn variables.orderGateway.getById(arguments.orderId)&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

