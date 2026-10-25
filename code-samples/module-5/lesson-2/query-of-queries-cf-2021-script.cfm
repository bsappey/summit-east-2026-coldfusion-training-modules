<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Query of Queries (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
qProducts = queryNew("productName,unitPrice", "varchar,decimal", [
    { productName: "Widget", unitPrice: 9.99 },
    { productName: "Gadget", unitPrice: 24.50 },
    { productName: "Doohickey", unitPrice: 15.00 }
]);
qFiltered = queryExecute(
    "SELECT productName, unitPrice FROM qProducts WHERE unitPrice > 10 ORDER BY unitPrice DESC",
    {},
    { dbtype: "query" }
);
writeOutput("QoQ rows: " & qFiltered.recordCount);
</cfscript>
