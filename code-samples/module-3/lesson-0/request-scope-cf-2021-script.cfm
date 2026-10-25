<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Request Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Request Scope Example
Request.requestId = CreateUUID();
Request.startTime = Now();
Request.userContext = {userId: 123, role: "admin"};
include "includes/header.cfm";
writeOutput("<p>Back in main page: " & encodeForHTML(Request.requestId) & "</p>");
</cfscript>
