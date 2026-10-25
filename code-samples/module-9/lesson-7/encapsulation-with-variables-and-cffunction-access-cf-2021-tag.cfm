<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Encapsulation with variables and cffunction access (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Thin runner for EncapsulationDemo.cfc --->
<cfset demo = new EncapsulationDemo(fullName=" Jane Doe ")>
<cfoutput><p>#encodeForHTML(demo.getFullName())#</p></cfoutput>
