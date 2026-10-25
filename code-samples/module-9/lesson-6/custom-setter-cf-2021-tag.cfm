<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Custom setter (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Custom setter --->
<cffunction name="setEmail" returntype="void" access="public">
    <cfargument name="email" type="string" required="true">
    <cfif NOT isValid("email", arguments.email)>
        <cfthrow message="Invalid email">
    </cfif>
    <cfset variables.email = arguments.email>
</cffunction>
