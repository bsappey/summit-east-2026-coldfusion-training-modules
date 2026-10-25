<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cftry/cfcatch (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - try/catch --->
<cftry>
    <cfset result = fileRead("nonexistent.txt")>
    <cfcatch type="any">
        <cfset request.errorMessage = cfcatch.message>
        <cflog text="#cfcatch.message#" type="error">
        <cfoutput><p>File could not be read. Please try again.</p></cfoutput>
    </cfcatch>
</cftry>
