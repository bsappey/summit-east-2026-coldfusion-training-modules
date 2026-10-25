<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Implementing interface (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
repo = createObject("component", "DemoRepo");
repo.save({ id: 1, name: "Ada" });
row = repo.getById(1);
writeOutput("<p>Saved then loaded recordCount=" & row.recordCount & "</p>");
</cfscript>
