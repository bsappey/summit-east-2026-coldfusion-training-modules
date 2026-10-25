<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Query metadata (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
qUsers = queryExecute(
    "SELECT userId, userName, email FROM users",
    {},
    { datasource: "CFTrainingDSN" }
);
writeOutput("Rows: " & qUsers.recordCount);
writeOutput(" Columns: " & qUsers.columnList);
writeOutput(" First: " & qUsers.userName[1]);
</cfscript>
