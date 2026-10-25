<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CSV export (CF 2021+ compatible)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Manual CSV from query --->
<cfquery name="q" datasource="CFTrainingDSN">
    SELECT productId, productName FROM products
</cfquery>
<cfset csv = q.columnList & chr(10)>
<cfloop query="q">
    <cfset csv &= productId & "," & """" & replace(productName, """", """""", "all") & """" & chr(10)>
</cfloop>
<cffile action="write" file="#getTempDirectory()#export.csv" output="#csv#" charset="utf-8">
