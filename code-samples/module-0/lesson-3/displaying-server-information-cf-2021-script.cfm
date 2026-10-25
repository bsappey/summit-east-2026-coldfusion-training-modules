<!---
  Auto-generated from modules-data.js (getModule0Data)
  codeTitle: Displaying Server Information (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CommandBox Server Info
<cfscript>
    writeOutput("<p>Server: " & CGI.SERVER_NAME & "</p>");
    writeOutput("<p>Port: " & CGI.SERVER_PORT & "</p>");
    writeOutput("<p>ColdFusion Version: " & Server.ColdFusion.ProductVersion & "</p>");
</cfscript>
