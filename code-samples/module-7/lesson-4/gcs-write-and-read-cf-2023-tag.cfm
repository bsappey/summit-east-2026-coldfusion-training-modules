<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: GCS write and read (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2023+ - GCS write and read --->
<cfset bucket = "my-gcs-bucket">
<cfset objectPath = "data/" & createUUID() & ".txt">
<cfset cloudPath = "gcs://" & bucket & "/" & objectPath>

<cffile action="write" file="#cloudPath#" output="GCS content" charset="utf-8">
<cffile action="read" file="#cloudPath#" variable="data">
<cfoutput>Read back: #encodeForHTML(data)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

