<!---
  Auto-generated from modules-data.js (getModule7Data)
  codeTitle: List cloud objects (CF 2023+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2023+ - List objects in S3 prefix --->
<cfset listPath = "s3://my-app-bucket/uploads/">
<cfdirectory action="list" directory="#listPath#" name="qList">
<cfoutput>
    <ul>
        <cfloop query="qList">
            <li>#encodeForHTML(name)# (#type#)</li>
        </cfloop>
    </ul>
</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

