<!---
  Auto-generated from modules-data.js (getModule2Data)
  codeTitle: Tag to script (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Script: modern equivalent
q = queryExecute("SELECT userId, userName FROM users WHERE active = 1", {}, { datasource: "CFTrainingDSN" });
</cfscript>
