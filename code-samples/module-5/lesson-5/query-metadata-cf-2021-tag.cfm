<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Query metadata (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfquery name="qUsers" datasource="CFTrainingDSN">
    SELECT userId, userName, email FROM users
</cfquery>

<cfoutput>
    <p>Rows: #qUsers.recordCount#</p>
    <p>Columns: #qUsers.columnList#</p>
    <p>First user: #qUsers.userName[1]#</p>
</cfoutput>
