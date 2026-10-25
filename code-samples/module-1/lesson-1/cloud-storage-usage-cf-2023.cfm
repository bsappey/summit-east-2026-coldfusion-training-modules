<!---
  Auto-generated from modules-data.js (getModule1Data)
  codeTitle: Cloud Storage Usage (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample needs cloud credentials / packages. If configuration is missing, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- Cloud Storage Configuration (CF 2023+) --->
<!--- Configure in CF Administrator or use cfsetup --->
<!--- Then use like local files --->
<cffile action="write" file="s3://mybucket/path/file.txt" output="Hello Cloud!">
<cffile action="read" file="s3://mybucket/path/file.txt" variable="content">
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

