<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Require authentication (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Require login --->
<cfif NOT structKeyExists(session, "authenticated") OR NOT session.authenticated>
    <cflocation url="login.cfm" addToken="false">
</cfif>
