<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: Cloud path with cffile (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
// CF 2023+ - Write and read via cloud path (script)
<cfscript>
    fileWrite("s3://mybucket/path/file.txt", "Hello Cloud!", "utf-8");
    content = fileRead("s3://mybucket/path/file.txt", "utf-8");
    writeOutput(encodeForHTML(content));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

