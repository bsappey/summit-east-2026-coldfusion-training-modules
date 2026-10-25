<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Write Spreadsheet
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Write Spreadsheet
<cfscript>
    outDir = getDirectoryFromPath(getCurrentTemplatePath());
    xlsxName = "demo-" & createUUID() & ".xlsx";
    xlsxPath = outDir & xlsxName;

    sheet = spreadsheetNew("Expenses", true);
    spreadsheetSetCellValue(sheet, "Item", 1, 1);
    spreadsheetSetCellValue(sheet, "Amount", 1, 2);
    spreadsheetSetCellValue(sheet, "Coffee", 2, 1);
    spreadsheetSetCellValue(sheet, "4.50", 2, 2);

    spreadsheetWrite(spreadsheet=sheet, filePath=xlsxPath, overwrite=true);
</cfscript>

<cfoutput>
    <p><a href="#xlsxName#" target="_blank">Open generated spreadsheet</a></p>
</cfoutput>
