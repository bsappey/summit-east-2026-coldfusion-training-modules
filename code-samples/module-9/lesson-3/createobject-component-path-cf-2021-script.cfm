<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: createObject("component", path) (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
cfcPath = "User";
obj = createObject("component", cfcPath);
obj.init(firstName="Jane", lastName="Doe");
writeOutput("<p>" & encodeForHTML(obj.getFullName()) & "</p>");
</cfscript>
