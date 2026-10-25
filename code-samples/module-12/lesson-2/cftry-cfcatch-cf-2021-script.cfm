<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cftry/cfcatch (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - try/catch
<cfscript>
    try {
        result = fileRead("nonexistent.txt");
    } catch (any e) {
        request.errorMessage = e.message;
        writeLog(type="error", text=e.message);
        writeOutput("<p>File could not be read. Please try again.</p>");
    }
</cfscript>
