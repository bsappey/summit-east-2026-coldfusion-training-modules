<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ormExecuteQuery / HQL (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
products = ormExecuteQuery("FROM Product WHERE active = 1 ORDER BY productName ASC");
for (p in products) {
    writeOutput(encodeForHTML(p.getProductName()) & "<br>");
}
</cfscript>
