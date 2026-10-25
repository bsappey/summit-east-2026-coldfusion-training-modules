<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: SELECT with cfquery and queryExecute (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Script syntax: queryExecute (CF 11+)
<cfscript>
    qEmployees = queryExecute(
        "SELECT employeeId, firstName, lastName, hireDate FROM employees ORDER BY lastName, firstName",
        {},
        { datasource: "CFTrainingDSN" }
    );

    for (row in qEmployees) {
        writeOutput("<p>" & row.firstName & " " & row.lastName & " (ID: " & row.employeeId & ")</p>");
    }

    rowCount = qEmployees.recordCount;
    writeOutput("<p>Total rows: " & rowCount & "</p>");
    writeOutput("<p>First name in row 1: " & qEmployees.firstName[1] & "</p>");
</cfscript>
