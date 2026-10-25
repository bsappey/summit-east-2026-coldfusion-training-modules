<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: List functions (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
ids = "10,20,30,40";
len = listLen(ids);
first = listFirst(ids);
arr = listToArray(ids);
writeOutput("Length: " & len & ", First: " & first);
writeOutput(" Second: " & listGetAt(ids, 2));
</cfscript>
