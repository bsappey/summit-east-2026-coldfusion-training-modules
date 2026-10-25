<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Microservice Communication Patterns
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Microservice Communication Patterns (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">// Service Client Component (CF 2021+)
component {
    
    // Synchronous HTTP Communication
    function getUserFromUserService(required numeric userID) {
        var httpService = new http();
        httpService.setMethod("GET");
        httpService.setUrl("http://user-service:8080/api/users/" &amp; arguments.userID);
        httpService.addParam(type="header", name="Content-Type", value="application/json");
        httpService.addParam(type="header", name="Authorization", value="Bearer " &amp; getAuthToken());
        
        var result = httpService.send().getPrefix();
        
        if (result.statusCode == "200 OK") {
            return deserializeJSON(result.fileContent);
        } else {
            throw("User service error: " &amp; result.statusCode);
        }
    }
    
    // Async Communication with Message Queue (CF 2023+)
    function publishOrderEvent(required struct orderData) {
        var messageQueue = new MessageQueueService();
        messageQueue.publish("order.created", serializeJSON(arguments.orderData));
    }
}</pre>

