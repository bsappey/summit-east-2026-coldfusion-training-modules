<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Implementing interface (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Implementing IRepository via DemoRepo.cfc --->
<cfset repo = createObject("component", "DemoRepo")>
<cfset repo.save({ id: 1, name: "Ada" })>
<cfset row = repo.getById(1)>
<cfoutput><p>Saved then loaded recordCount=#row.recordCount#</p></cfoutput>
