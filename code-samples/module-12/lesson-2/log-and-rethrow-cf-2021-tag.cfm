<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Log and rethrow (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Log and would-rethrow (classroom Run stays HTTP 200) --->
<cftry>
    <cfthrow type="Application" message="Demo failure" detail="intentional">
    <cfcatch type="any">
        <cflog text="#cfcatch.message# #cfcatch.detail#" type="error" file="myapp">
        <cfoutput><p>Logged error; would rethrow in production (cfrethrow).</p></cfoutput>
    </cfcatch>
</cftry>
