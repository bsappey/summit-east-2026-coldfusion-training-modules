<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: List cloud objects (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
// CF 2023+ - List objects (script)
<cfscript>
    listPath = "s3://my-app-bucket/uploads/";
    qList = directoryList(listPath, false, "query");
    for (i = 1; i <= qList.recordCount; i++) {
        writeOutput("<li>" & encodeForHTML(qList.name[i]) & " (" & qList.type[i] & ")</li>");
    }
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

