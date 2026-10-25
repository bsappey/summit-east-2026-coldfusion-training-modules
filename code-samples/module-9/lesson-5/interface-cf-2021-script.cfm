<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Interface (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Demo: companions IRepository.cfc + DemoRepo.cfc (interface body lives in .cfc, not .cfm)
repo = new DemoRepo();
row = repo.getById(1);
writeOutput("<p>Interface demo: DemoRepo.getById(1) recordCount=" & row.recordCount & "</p>");
</cfscript>
