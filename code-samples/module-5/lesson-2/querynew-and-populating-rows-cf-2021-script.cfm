<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: queryNew and populating rows (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
q = queryNew("id,title", "integer,varchar");
queryAddRow(q);
querySetCell(q, "id", 1);
querySetCell(q, "title", "First");
queryAddRow(q);
querySetCell(q, "id", 2);
querySetCell(q, "title", "Second");

q2 = queryNew("id,title", "integer,varchar", [
    { id: 1, title: "First" },
    { id: 2, title: "Second" }
]);
</cfscript>
