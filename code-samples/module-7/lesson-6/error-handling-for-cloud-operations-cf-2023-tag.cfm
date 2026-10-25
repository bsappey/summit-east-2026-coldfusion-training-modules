<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: Error handling for cloud operations (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2023+ - Error handling around cloud write --->
<cfset content = "demo content">
<cftry>
    <cffile action="write" file="s3://mybucket/path/file.txt" output="#content#" charset="utf-8">
    <cfoutput><p>Saved successfully.</p></cfoutput>
    <cfcatch type="any">
        <cflog text="Cloud write failed: #cfcatch.message#" type="error">
        <cfoutput><p>Unable to save; please try again.</p></cfoutput>
    </cfcatch>
</cftry>
