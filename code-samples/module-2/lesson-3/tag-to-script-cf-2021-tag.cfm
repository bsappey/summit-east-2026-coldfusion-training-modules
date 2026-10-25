<!---
  Auto-generated from modules-data.js (getModule2Data)
  codeTitle: Tag to script (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag: old style --->
<cfset q = "">
<cfquery name="q" datasource="CFTrainingDSN">
    SELECT userId, userName FROM users WHERE active = 1
</cfquery>
