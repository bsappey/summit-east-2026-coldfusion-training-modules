<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Variables Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Variables Scope Examples
// Explicit Variables scope
Variables.userName = "John Doe";
Variables.cartTotal = 0;

// Implicit Variables scope (default)
name = "John Doe";
cartTotal = 0;

// Both are equivalent
writeOutput("<p>Explicit: " & Variables.userName & "</p>");
writeOutput("<p>Implicit: " & name & "</p>");
writeOutput("<p>Same value: " & (Variables.userName == name) & "</p>");
</cfscript>
