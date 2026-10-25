<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: queryNew and populating rows (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Empty query then add rows --->
<cfset q = queryNew("id,title", "integer,varchar")>
<cfset queryAddRow(q)>
<cfset querySetCell(q, "id", 1)>
<cfset querySetCell(q, "title", "First")>
<cfset queryAddRow(q)>
<cfset querySetCell(q, "id", 2)>
<cfset querySetCell(q, "title", "Second")>
<cfset writeDump(q)>

<!--- Or with row data (CF 10+) --->
<cfset q2 = queryNew("id,title", "integer,varchar", [
    { id: 1, title: "First" },
    { id: 2, title: "Second" }
])>
