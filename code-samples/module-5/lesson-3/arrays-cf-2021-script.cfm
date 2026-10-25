<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Arrays (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
colors = ["Red", "Green", "Blue"];
arrayAppend(colors, "Yellow");
writeOutput(arrayLen(colors) & " ");
for (c in colors) {
    writeOutput(c & " ");
}
</cfscript>
