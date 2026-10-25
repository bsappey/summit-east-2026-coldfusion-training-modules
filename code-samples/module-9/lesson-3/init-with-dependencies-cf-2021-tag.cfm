<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: init() with dependencies (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Init with dependencies --->
<cffunction name="init" returntype="OrderService" access="public">
    <cfargument name="datasource" type="string" required="true">
    <cfargument name="logger" type="any" required="false">
    <cfset variables.datasource = arguments.datasource>
    <cfset variables.logger = arguments.logger>
    <cfreturn this>
</cffunction>
