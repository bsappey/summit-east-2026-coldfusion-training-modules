<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Microservice Communication Patterns
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Microservice Communication Patterns (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Service Client Component (CF 2021+) ---&gt;
&lt;cfcomponent&gt;
    &lt;!--- Synchronous HTTP Communication ---&gt;
    &lt;cffunction name="getUserFromUserService" returntype="struct"&gt;
        &lt;cfargument name="userID" type="numeric" required="true"&gt;
        
        &lt;cfhttp url="http://user-service:8080/api/users/#arguments.userID#" method="GET" result="httpResult"&gt;
            &lt;cfhttpparam type="header" name="Content-Type" value="application/json"&gt;
            &lt;cfhttpparam type="header" name="Authorization" value="Bearer #getAuthToken()#"&gt;
        &lt;/cfhttp&gt;
        
        &lt;cfif httpResult.statusCode EQ "200 OK"&gt;
            &lt;cfreturn deserializeJSON(httpResult.fileContent)&gt;
        &lt;cfelse&gt;
            &lt;cfthrow message="User service error: #httpResult.statusCode#"&gt;
        &lt;/cfif&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- Async Communication with Message Queue (CF 2023+) ---&gt;
    &lt;cffunction name="publishOrderEvent" returntype="void"&gt;
        &lt;cfargument name="orderData" type="struct" required="true"&gt;
        
        &lt;!--- Publish to message queue for async processing ---&gt;
        &lt;cfset messageQueue = createObject("component", "MessageQueueService")&gt;
        &lt;cfset messageQueue.publish("order.created", serializeJSON(arguments.orderData))&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

