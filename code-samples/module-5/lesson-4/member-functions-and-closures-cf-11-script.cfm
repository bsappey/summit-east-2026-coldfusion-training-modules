<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Member functions and closures (CF 11+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    nums = [10, 20];
    nums.append(30);
    writeOutput("len (.len): " & nums.len() & "<br>");

    // Member .each() with closure
    nums.each(function(n) {
        writeOutput(n & " ");
    });

    // arrayEach with closure (element, index)
    writeOutput("<br>");
    arrayEach(["a", "b"], function(el, i) {
        writeOutput(i & ":" & el & " ");
    });

    // structEach + closure
    person = { name: "Sam", role: "dev" };
    structEach(person, function(k, v) {
        writeOutput("<br>" & k & "=" & v);
    });
</cfscript>
