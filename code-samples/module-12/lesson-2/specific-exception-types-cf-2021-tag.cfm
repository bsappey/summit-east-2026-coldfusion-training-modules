<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Specific exception types (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Specific catch --->
<cftry>
    <cfquery name="q" datasource="#dsn#">SELECT 1</cfquery>
    <cfcatch type="database">
        <!--- Handle DB errors --->
    </cfcatch>
    <cfcatch type="any">
        <!--- Catch-all --->
    </cfcatch>
</cftry>
