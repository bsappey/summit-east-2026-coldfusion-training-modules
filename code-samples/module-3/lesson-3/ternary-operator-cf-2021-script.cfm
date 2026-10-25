<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Ternary Operator (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Ternary Operator
<cfscript>
    age = 25;
    message = (age >= 21) ? "Welcome to the show!" : "Sorry, you are not old enough to enter.";
    writeOutput(message);

    isActive = true;
    writeOutput("Status: " & (isActive ? "Active" : "Inactive"));
</cfscript>
