<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: queryExecute with array params (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
categoryId = 1; // demo default
q = queryExecute(
    "SELECT * FROM products WHERE categoryId = ? AND active = ?",
    [ categoryId, 1 ],
    { datasource: "CFTrainingDSN" }
);

// With typed params:
q2 = queryExecute(
    "SELECT * FROM products WHERE categoryId = ? AND active = ?",
    [
        { value: categoryId, cfsqltype: "cf_sql_integer" },
        { value: 1, cfsqltype: "cf_sql_integer" }
    ],
    { datasource: "CFTrainingDSN" }
);
</cfscript>
