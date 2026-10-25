<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: queryExecute result struct (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    sql = "SELECT userId, userName FROM users WHERE userId = :id";
    params = { id: { value: 1, cfsqltype: "cf_sql_integer" } };
    options = { datasource: "CFTrainingDSN", result: "qMeta" };
    q = queryExecute(sql, params, options);

    writeOutput("Rows: " & q.recordCount & "<br>");
    writeOutput("Executed SQL: " & qMeta.sql);
</cfscript>
