<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Server Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Server Scope Example
// Initialize once (typically in a startup script)
if (!StructKeyExists(Server, "initialized")) {
    Server.startTime = Now();
    Server.instanceId = CreateUUID();
    Server.totalRequests = 0;
    Server.initialized = true;
}

// Access server data
writeOutput("<p>Server ID: " & Server.instanceId & "</p>");
writeOutput("<p>Uptime: " & DateDiff("h", Server.startTime, Now()) & " hours</p>");
</cfscript>
