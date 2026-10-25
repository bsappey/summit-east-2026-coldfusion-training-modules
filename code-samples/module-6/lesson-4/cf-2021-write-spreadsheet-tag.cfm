<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Write Spreadsheet
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Write Spreadsheet --->
<cfset outDir = getDirectoryFromPath(getCurrentTemplatePath())>
<cfset xlsxName = "demo-" & createUUID() & ".xlsx">
<cfset xlsxPath = outDir & xlsxName>

<cfset sheet = spreadsheetNew("Expenses", true)>
<cfset spreadsheetSetCellValue(sheet, "Item", 1, 1)>
<cfset spreadsheetSetCellValue(sheet, "Amount", 1, 2)>
<cfset spreadsheetSetCellValue(sheet, "Coffee", 2, 1)>
<cfset spreadsheetSetCellValue(sheet, "4.50", 2, 2)>

<cfscript>
    spreadsheetWrite(spreadsheet=sheet, filePath=xlsxPath, overwrite=true);
</cfscript>

<cfoutput>
    <p><a href="#xlsxName#" target="_blank">Open generated spreadsheet</a></p>
</cfoutput>
