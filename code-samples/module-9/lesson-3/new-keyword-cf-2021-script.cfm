<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: new keyword (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Instantiate with new (companion User.cfc in this lesson folder)
user = new User(firstName="Jane", lastName="Doe");
fullName = user.getFullName();
writeOutput("<p>" & encodeForHTML(fullName) & "</p>");
</cfscript>
