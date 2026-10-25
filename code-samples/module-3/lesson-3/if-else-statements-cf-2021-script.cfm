<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: If/Else Statements (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: If/Else Statements
<cfscript>
    score = 85;
    
    if (score >= 90) {
        grade = "A";
    } else if (score >= 80) {
        grade = "B";
    } else if (score >= 70) {
        grade = "C";
    } else {
        grade = "F";
    }
    
    writeOutput("Grade: " & grade);
</cfscript>
