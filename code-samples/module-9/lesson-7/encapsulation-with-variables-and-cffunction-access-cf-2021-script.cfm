<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Encapsulation with variables and cffunction access (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Thin runner for EncapsulationDemo.cfc
demo = new EncapsulationDemo(fullName=" Jane Doe ");
writeOutput("<p>" & encodeForHTML(demo.getFullName()) & "</p>");
</cfscript>
