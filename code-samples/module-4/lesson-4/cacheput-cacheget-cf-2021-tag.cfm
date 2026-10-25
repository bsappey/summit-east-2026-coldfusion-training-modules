<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: cachePut / cacheGet (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Cache a query result --->
<cfif NOT cacheIdExists("activeUsers")>
    <cfquery name="qUsers" datasource="CFTrainingDSN">
        SELECT userId, userName FROM users WHERE active = 1
    </cfquery>
    <cfset cachePut("activeUsers", qUsers, createTimeSpan(0, 1, 0, 0))>
<cfelse>
    <cfset qUsers = cacheGet("activeUsers")>
</cfif>

<cfoutput>Cached rows: #qUsers.recordCount#</cfoutput>
