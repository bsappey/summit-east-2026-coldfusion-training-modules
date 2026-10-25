<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Basic Variable Assignment (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Basic Variable Assignment
<cfscript>
    name = "John Doe";
    age = 30;
    salary = 50000.50;
    isActive = true;
    hireDate = Now();
    
    writeOutput("<p>Name: " & name & "</p>");
    writeOutput("<p>Age: " & age & "</p>");
    writeOutput("<p>Salary: " & DollarFormat(salary) & "</p>");
    writeOutput("<p>Active: " & isActive & "</p>");
    writeOutput("<p>Hired: " & DateFormat(hireDate, "full") & "</p>");
</cfscript>
