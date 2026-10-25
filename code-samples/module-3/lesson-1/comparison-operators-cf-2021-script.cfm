<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Comparison Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Comparison Operators
<cfscript>
    x = 10;
    y = 20;
    z = 10;
    name1 = "John";
    name2 = "Jane";
    
    // Equality operators
    if (x == z) {
        result1 = "x equals z";
    }
    
    if (x != y) {
        result2 = "x does not equal y";
    }
    
    // Comparison operators
    if (x > y) {
        result3 = "x is greater than y";
    } else if (x < y) {
        result3 = "x is less than y";
    }
    
    if (x >= z) {
        result4 = "x is greater than or equal to z";
    }
    
    if (x <= y) {
        result5 = "x is less than or equal to y";
    }
    
    // String comparison
    if (name1 == name2) {
        result6 = "Names are equal";
    } else {
        result6 = "Names are different";
    }
    
    writeOutput("<h3>Comparison Results</h3>");
    writeOutput("<p>" & result1 & "</p>");
    writeOutput("<p>" & result2 & "</p>");
    writeOutput("<p>" & result3 & "</p>");
    writeOutput("<p>" & result4 & "</p>");
    writeOutput("<p>" & result5 & "</p>");
    writeOutput("<p>" & result6 & "</p>");
</cfscript>
