<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: Query to spreadsheet (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Query to XLSX --->
<cfquery name="qProducts" datasource="CFTrainingDSN">
    SELECT productId, productName, unitPrice FROM products
</cfquery>

<cfset outDir = getDirectoryFromPath(getCurrentTemplatePath())>
<cfset xlsxPath = outDir & "products-" & createUUID() & ".xlsx">

<cfset wb = spreadsheetNew("Products", true)>
<cfset spreadsheetAddRow(wb, qProducts.columnList)>
<cfset spreadsheetAddRows(wb, qProducts)>
<cfset spreadsheetWrite(wb, xlsxPath, "", true)>

<cfoutput><p><a href="#getFileFromPath(xlsxPath)#" target="_blank">Download products spreadsheet</a></p></cfoutput>
