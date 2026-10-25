<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Scope Resolution (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Scope Resolution Example
// BAD: Ambiguous - which scope?
name = "John";
writeOutput(name);

// GOOD: Explicit scope
Variables.name = "John";
Session.name = "Jane";
writeOutput("Variables: " & Variables.name & "<br>");
writeOutput("Session: " & Session.name);
</cfscript>
