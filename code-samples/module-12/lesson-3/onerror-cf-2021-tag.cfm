<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: onError (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Application.cfc --->
<cffunction name="onError" returntype="void" access="public">
    <cfargument name="exception" type="any" required="true">
    <cfargument name="eventName" type="string" required="true">
    <cflog text="#arguments.exception.message#" type="error" file="app_errors">
    <cfinclude template="error.cfm">
</cffunction>
