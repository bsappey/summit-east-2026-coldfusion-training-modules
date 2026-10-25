<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Request Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Request Scope Example --->
<cfset Request.requestId = CreateUUID()>
<cfset Request.startTime = Now()>
<cfset Request.userContext = {userId: 123, role: "admin"}>
<!--- Included templates share Request for this request --->
<cfinclude template="includes/header.cfm">
<cfoutput><p>Back in main page: #encodeForHTML(Request.requestId)#</p></cfoutput>
