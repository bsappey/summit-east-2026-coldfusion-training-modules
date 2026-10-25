<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: SELECT with cfquery and queryExecute (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag syntax: run SELECT and store result --->
<cfquery name="qEmployees" datasource="CFTrainingDSN">
    SELECT employeeId, firstName, lastName, hireDate
    FROM employees
    ORDER BY lastName, firstName
</cfquery>

<cfoutput query="qEmployees">
    <p>#firstName# #lastName# (ID: #employeeId#)</p>
</cfoutput>

<!--- Or by row index --->
<cfset rowCount = qEmployees.recordCount>
<cfoutput>
    <p>Total rows: #rowCount#</p>
    <p>First name in row 1: #qEmployees.firstName[1]#</p>
</cfoutput>
