<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Default datasource (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- In Application.cfc: this.datasource = "CFTrainingDSN"; --->

<cfquery name="qProducts" datasource="CFTrainingDSN">
    SELECT productId, productName, unitPrice FROM products
</cfquery>
