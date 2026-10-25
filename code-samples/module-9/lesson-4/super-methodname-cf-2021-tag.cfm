<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: super.methodName() (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Child calls parent --->
<cffunction name="speak" returntype="string" access="public">
    <cfset parentResult = super.speak()>
    <cfreturn "Loud " & parentResult>
</cffunction>
