<!---
  Auto-generated from modules-data.js (getModule2Data)
  codeTitle: Explicit scoping (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.userName" default="demo">

<!--- Prefer explicit scope --->
<cfset variables.userName = form.userName>
<cfset request.startTime = getTickCount()>
