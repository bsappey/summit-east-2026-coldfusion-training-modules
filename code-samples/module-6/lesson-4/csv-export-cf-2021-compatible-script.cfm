<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CSV export (CF 2021+ compatible)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    q = queryExecute("SELECT productId, productName FROM products", {}, { datasource: "CFTrainingDSN" });
    lines = [ q.columnList ];
    for (row in q) {
        lines.append(row.productId & ',"' & replace(row.productName, '"', '""', "all") & '"');
    }
    fileWrite(getTempDirectory() & "export.csv", arrayToList(lines, chr(10)), "utf-8");
</cfscript>
