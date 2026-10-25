<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Compound operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    x = 5;
    x += 3;           // 8, same as x = x + 3
    x += 10 / 2;      // 13, x = x + (10 / 2)

    total = 100;
    total -= 25;
    total *= 2;
    total /= 5;

    str = "Hello";
    str &= ", ";
    str &= "World";   // "Hello, World", str = str & "World"

    writeOutput("<p>x = " & x & "</p>");
    writeOutput("<p>total = " & total & "</p>");
    writeOutput("<p>str = " & str & "</p>");
</cfscript>
