<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Server Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Server Scope Example --->
<!--- Initialize once (typically in a startup script) --->
<cfif NOT StructKeyExists(Server, "initialized")>
    <cfset Server.startTime = Now()>
    <cfset Server.instanceId = CreateUUID()>
    <cfset Server.totalRequests = 0>
    <cfset Server.initialized = true>
</cfif>

<!--- Access server data --->
<cfoutput>
    <p>Server ID: #Server.instanceId#</p>
    <p>Uptime: #DateDiff("h", Server.startTime, Now())# hours</p>
</cfoutput>
