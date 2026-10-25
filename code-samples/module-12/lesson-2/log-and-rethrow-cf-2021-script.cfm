<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Log and rethrow (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
try {
    throw(type="Application", message="Demo failure", detail="intentional");
} catch (any e) {
    writeLog(type="error", file="myapp", text=e.message & " " & e.detail);
    writeOutput("<p>Logged error; would rethrow in production (rethrow).</p>");
}
</cfscript>
