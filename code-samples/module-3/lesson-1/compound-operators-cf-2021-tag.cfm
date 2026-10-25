<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Compound operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Compound operators in a cfscript block (tag page) --->
<cfscript>
    x = 5;
    x += 3;           // 8, same as x = x + 3
    x += 10 / 2;      // 13, right side evaluated first: x + (10/2)

    total = 100;
    total -= 25;      // 75
    total *= 2;       // 150
    total /= 5;       // 30

    str = "Hello";
    str &= ", ";
    str &= "World";   // "Hello, World"
</cfscript>

<cfoutput>
    <p>x = #x#</p>
    <p>total = #total#</p>
    <p>str = #str#</p>
</cfoutput>
