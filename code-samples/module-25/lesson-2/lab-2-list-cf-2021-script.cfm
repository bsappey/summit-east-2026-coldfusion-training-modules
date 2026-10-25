<!---
  Auto-generated from modules-data.js (getModule25Data)
  codeTitle: Lab 2 list (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
qContacts = queryExecute("SELECT id, name, email, created FROM contacts ORDER BY created DESC", {}, { datasource: "CFTrainingDSN" });
// Then output table with cfloop or for (i=1; i<=qContacts.recordCount; i++)
</cfscript>
