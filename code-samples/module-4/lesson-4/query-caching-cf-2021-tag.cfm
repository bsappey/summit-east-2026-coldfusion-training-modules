<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Query caching (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- cfquery cached result --->
<cfquery name="qProducts" datasource="CFTrainingDSN" cachedwithin="#createTimeSpan(0, 0, 5, 0)#">
    SELECT productId, productName FROM products
</cfquery>
