<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Singleton vs transient (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- Application-scoped singleton vs per-request transient --->
<cfif NOT structKeyExists(application, "securityUtils")>
    <cflock scope="application" type="exclusive" timeout="10">
        <cfif NOT structKeyExists(application, "securityUtils")>
            <cfset application.securityUtils = new com.SecurityUtils()>
        </cfif>
    </cflock>
</cfif>

<!--- Transient: new instance per request --->
<cfset user = new model.User()>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

