<!---
  Auto-generated from modules-data.js (getModule2Data)
  codeTitle: Version detection (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Optional: detect version for conditional logic during migration --->
<cfset engineVersion = server.coldfusion.productVersion>
<cfif left(engineVersion, 4) GTE "2023">
    <!--- Use 2023+ feature --->
<cfelse>
    <!--- Fallback for 2021 --->
</cfif>
