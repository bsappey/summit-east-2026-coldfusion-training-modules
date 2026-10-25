<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ormExecuteQuery / HQL (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- HQL via ormExecuteQuery (tags) --->
<cfset products = ormExecuteQuery("FROM Product WHERE active = 1 ORDER BY productName ASC")>
<cfloop array="#products#" index="p">
    <cfoutput>#EncodeForHTML(p.getProductName())#<br></cfoutput>
</cfloop>
