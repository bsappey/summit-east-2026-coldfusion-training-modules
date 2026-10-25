<!---
  Auto-generated from modules-data.js (getModule0Data)
  codeTitle: Checking Your ColdFusion Environment (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Check ColdFusion Version and Environment
<cfscript>
    javaVersion = createObject("java","java.lang.System").getProperty("java.version");

    writeOutput("<h3>ColdFusion Environment Information</h3>");
    writeOutput("<p>Product: " & Server.ColdFusion.ProductName & "</p>");
    writeOutput("<p>Version: " & Server.ColdFusion.ProductVersion & "</p>");
    writeOutput("<p>Update level: " & Server.ColdFusion.UpdateLevel & "</p>");
    writeOutput("<p>Edition: " & Server.ColdFusion.ProductLevel & "</p>");
    writeOutput("<p>Java version: " & javaVersion & "</p>");
    writeOutput("<p>OS: " & Server.OS.Name & " (" & Server.OS.Arch & ")</p>");
    writeOutput("<p>Server name: " & CGI.SERVER_NAME & "</p>");
    writeOutput("<p>Server port: " & CGI.SERVER_PORT & "</p>");
</cfscript>
