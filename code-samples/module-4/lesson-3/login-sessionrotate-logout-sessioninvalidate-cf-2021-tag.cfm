<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: Login (sessionRotate) + logout (sessionInvalidate) (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Login handler (simplified) --->
<cfif StructKeyExists(Form, "login")>
    <!--- Assume credentials validated against database --->
    <cflock type="exclusive" scope="session" timeout="20">
        <cfset Session.loggedIn = true>
        <cfset Session.userId = 42>
        <cfset Session.userName = "jdoe">
    </cflock>
    <cfset sessionRotate()>
    <cflocation url="dashboard.cfm" addtoken="false">
</cfif>

<!--- Logout handler --->
<cfif StructKeyExists(URL, "logout")>
    <cflock type="exclusive" scope="session" timeout="20">
        <cfset sessionInvalidate()>
    </cflock>
    <cflocation url="index.cfm" addtoken="false">
</cfif>
