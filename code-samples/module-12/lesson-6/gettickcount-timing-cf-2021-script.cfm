<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: getTickCount() timing (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
start = getTickCount();
q = queryExecute("SELECT * FROM bigTable", {}, { datasource: "CFTrainingDSN" });
elapsed = getTickCount() - start;
if (elapsed > 1000)
    writeLog(type: "warning", file: "perf", text: "Slow query: " & elapsed & " ms");
</cfscript>
