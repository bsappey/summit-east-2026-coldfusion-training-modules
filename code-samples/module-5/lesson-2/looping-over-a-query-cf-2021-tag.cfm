<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Looping over a query (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfquery name="qList" datasource="CFTrainingDSN">
    SELECT id, title FROM articles ORDER BY created DESC
</cfquery>

<cfoutput query="qList">
    <div>#currentRow#. #title#</div>
</cfoutput>

<!--- cfloop --->
<cfloop query="qList">
    <cfoutput>#id#: #title#<br></cfoutput>
</cfloop>
