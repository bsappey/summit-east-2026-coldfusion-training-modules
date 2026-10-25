<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Default datasource (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// In Application.cfc: this.datasource = "CFTrainingDSN";

qProducts = queryExecute(
    "SELECT productId, productName, unitPrice FROM products",
    {},
    {}  // options; datasource optional when default set
);
</cfscript>
