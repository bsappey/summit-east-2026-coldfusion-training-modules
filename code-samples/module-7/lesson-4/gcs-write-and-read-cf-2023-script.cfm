<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: GCS write and read (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
// CF 2023+ - GCS write and read (script)
<cfscript>
    bucket = "my-gcs-bucket";
    objectPath = "data/" & createUUID() & ".txt";
    cloudPath = "gcs://" & bucket & "/" & objectPath;
    fileWrite(cloudPath, "GCS content", "utf-8");
    data = fileRead(cloudPath, "utf-8");
    writeOutput("Read back: " & encodeForHTML(data));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

