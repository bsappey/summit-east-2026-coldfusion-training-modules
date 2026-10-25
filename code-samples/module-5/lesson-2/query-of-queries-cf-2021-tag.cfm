<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Query of Queries (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Build a demo query, then filter it with Query of Queries --->
<cfset qProducts = queryNew("productName,unitPrice", "varchar,decimal", [
    { productName: "Widget", unitPrice: 9.99 },
    { productName: "Gadget", unitPrice: 24.50 },
    { productName: "Doohickey", unitPrice: 15.00 }
])>
<cfquery name="qFiltered" dbtype="query">
    SELECT productName, unitPrice
    FROM qProducts
    WHERE unitPrice > 10
    ORDER BY unitPrice DESC
</cfquery>
<cfoutput><p>QoQ rows: #qFiltered.recordCount#</p></cfoutput>
