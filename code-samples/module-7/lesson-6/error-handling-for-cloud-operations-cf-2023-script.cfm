<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: Error handling for cloud operations (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2023+ - Error handling (script)
<cfscript>
    content = "demo content";
    try {
        fileWrite("s3://mybucket/path/file.txt", content, "utf-8");
        writeOutput("<p>Saved successfully.</p>");
    } catch (any e) {
        writeLog(type="error", text="Cloud write failed: " & e.message);
        writeOutput("<p>Unable to save; please try again.</p>");
    }
</cfscript>
