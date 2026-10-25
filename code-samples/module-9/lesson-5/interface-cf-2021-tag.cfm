<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Interface (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Demo: IRepository.cfc + DemoRepo.cfc companions in this lesson folder --->
<cfset repo = new DemoRepo()>
<cfset row = repo.getById(1)>
<cfoutput><p>Interface demo: DemoRepo.getById(1) recordCount=#row.recordCount#</p></cfoutput>
