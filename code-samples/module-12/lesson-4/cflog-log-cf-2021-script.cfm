<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cflog / log() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - writeLog()
<cfscript>
    demoUserId = 42;
    demoErrorMessage = "Payment gateway timeout (demo)";
    writeLog(text="User " & demoUserId & " submitted form", type="information");
    writeLog(text=demoErrorMessage, type="error", file="payments");
    writeOutput("<p>Wrote information + error log entries (demo).</p>");
</cfscript>
