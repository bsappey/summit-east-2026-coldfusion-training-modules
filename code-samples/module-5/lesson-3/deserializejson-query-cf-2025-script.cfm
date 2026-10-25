<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: DeserializeJSON(..., "query") (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// CF 2025+ - JSON array of objects → query
json = '[
  { "id": 1, "name": "One", "amount": 15 },
  { "id": 2, "name": "Two", "amount": 18 }
]';

q = deserializeJSON(json, "query");
writeDump(q);

// Query-style access:
writeOutput(q.name[1] & " = " & q.amount[1]);
</cfscript>
