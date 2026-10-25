<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Looping over a query (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
qList = queryExecute("SELECT id, title FROM articles ORDER BY created DESC", {}, { datasource: "CFTrainingDSN" });

for (row in qList) {
    writeOutput("<div>" & row.id & ": " & row.title & "</div>");
}

// By index:
for (i = 1; i <= qList.recordCount; i++) {
    writeOutput(qList.id[i] & ": " & qList.title[i] & "<br>");
}
</cfscript>
