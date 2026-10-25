<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Loop Examples (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Loops
<cfscript>
    // For Loop
    for (i = 1; i <= 10; i++) {
        writeOutput(i & " ");
    }
    
    // For-In Loop (Arrays)
    colors = ["Red", "Green", "Blue"];
    for (color in colors) {
        writeOutput(color & "<br>");
    }
    
    // For-In Loop (Structs)
    person = {name: "John", age: 30, city: "NYC"};
    for (key in person) {
        writeOutput(key & ": " & person[key] & "<br>");
    }
    
    // While Loop
    counter = 1;
    while (counter <= 5) {
        writeOutput(counter & " ");
        counter++;
    }
</cfscript>
