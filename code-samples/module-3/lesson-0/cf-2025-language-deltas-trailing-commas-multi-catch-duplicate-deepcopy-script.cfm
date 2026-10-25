<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: CF 2025 language deltas (trailing commas, multi-catch, duplicate deepCopy)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2025+ language deltas
<cfscript>
    // 1) Trailing commas
    nums = [1, 2, 3,];
    user = { id: 1, name: "Jane", };

    // 2) Multiple exception types in one catch
    try {
        // Example: something that might throw expression or database exceptions
        result = 1 / 0;
    } catch (expression | database e) {
        writeOutput("<p>Caught: " & e.type & " - " & e.message & "</p>");
    }

    // 3) duplicate() deepCopy flag
    original = { name: "Alice", address: { street: "123 Main St" } };
    shallow = duplicate(original, false); // keep child references linked
    deep = duplicate(original, true);     // clone child elements

    original.address.street = "456 Oak St";

    writeOutput("<p>Original: " & original.address.street & "</p>");
    writeOutput("<p>Shallow (linked): " & shallow.address.street & "</p>");
    writeOutput("<p>Deep (cloned): " & deep.address.street & "</p>");
</cfscript>
