<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Structs (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfset user = { id: 1, name: "Jane", role: "admin" }>
<cfset user.email = "jane@example.com">
<cfoutput>#user.name# (#user["role"]#)</cfoutput>
<cfif structKeyExists(user, "phone")>
    <cfoutput>#user.phone#</cfoutput>
</cfif>
