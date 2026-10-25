<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: getTickCount() timing (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Simple timing --->
<cfset start = getTickCount()>
<cfquery name="q" datasource="CFTrainingDSN">SELECT * FROM bigTable</cfquery>
<cfset elapsed = getTickCount() - start>
<cfif elapsed GT 1000>
    <cflog text="Slow query: #elapsed# ms" type="warning" file="perf">
</cfif>
