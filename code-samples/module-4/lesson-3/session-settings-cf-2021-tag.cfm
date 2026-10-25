<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Session settings (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Demo of typical Application.cfc session settings (does not replace root Application.cfc) --->
<cfset sessionSettings = { name: "MyApplication", sessionManagement: true, sessionTimeout: CreateTimeSpan(0, 0, 30, 0) }>
<cfoutput>
    <p>this.name (example): #encodeForHTML(sessionSettings.name)#</p>
    <p>this.sessionManagement: #sessionSettings.sessionManagement#</p>
    <p>this.sessionTimeout (CreateTimeSpan days): #sessionSettings.sessionTimeout#</p>
    <p>Session scope available here: <cfif isDefined("session")>yes<cfelse>no</cfif></p>
</cfoutput>
