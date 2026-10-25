<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: Query to spreadsheet (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    qProducts = queryExecute(
        "SELECT productId, productName, unitPrice FROM products",
        {},
        { datasource: "CFTrainingDSN" }
    );
    outDir = getDirectoryFromPath(getCurrentTemplatePath());
    xlsxPath = outDir & "products-" & createUUID() & ".xlsx";

    wb = spreadsheetNew("Products", true);
    spreadsheetAddRow(wb, qProducts.columnList);
    spreadsheetAddRows(wb, qProducts);
    spreadsheetWrite(wb, xlsxPath, "", true);
</cfscript>

<cfoutput><p><a href="#getFileFromPath(xlsxPath)#" target="_blank">Download products spreadsheet</a></p></cfoutput>
