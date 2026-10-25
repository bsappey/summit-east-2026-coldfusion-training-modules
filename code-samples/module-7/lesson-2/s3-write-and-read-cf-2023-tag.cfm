<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: S3 write and read (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2023+ - S3 write and read --->
<cfset bucket = "my-app-bucket">
<cfset key = "uploads/" & createUUID() & ".txt">
<cfset cloudPath = "s3://" & bucket & "/" & key>

<cffile action="write" file="#cloudPath#" output="Sample content" charset="utf-8">
<cffile action="read" file="#cloudPath#" variable="data">
<cfoutput>Read back: #encodeForHTML(data)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

