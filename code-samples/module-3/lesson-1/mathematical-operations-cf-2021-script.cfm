<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Mathematical Operations (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script Syntax: Mathematical Operators
<cfscript>
    a = 10;
    b = 3;
    c = 2;
    
    // Basic operations
    sum = a + b;
    difference = a - b;
    product = a * b;
    quotient = a / b;
    remainder = a MOD b;
    power = a ^ c;
    
    // Increment and decrement
    counter = 0;
    counter++;
    counter++;
    counter--;
    
    writeOutput("<h3>Mathematical Operations</h3>");
    writeOutput("<p>a = " & a & ", b = " & b & ", c = " & c & "</p>");
    writeOutput("<p>Sum: " & a & " + " & b & " = " & sum & "</p>");
    writeOutput("<p>Difference: " & a & " - " & b & " = " & difference & "</p>");
    writeOutput("<p>Product: " & a & " * " & b & " = " & product & "</p>");
    writeOutput("<p>Quotient: " & a & " / " & b & " = " & quotient & "</p>");
    writeOutput("<p>Remainder: " & a & " MOD " & b & " = " & remainder & "</p>");
    writeOutput("<p>Power: " & a & " ^ " & c & " = " & power & "</p>");
    writeOutput("<p>Counter: " & counter & "</p>");
</cfscript>
