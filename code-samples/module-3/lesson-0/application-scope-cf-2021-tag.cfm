<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Application Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Application Scope Example (page demo; init keys if missing) --->
<cfif NOT StructKeyExists(Application, "appName")>
    <cflock scope="Application" timeout="10" type="exclusive">
        <cfif NOT StructKeyExists(Application, "appName")>
            <cfset Application.appName = "My Application">
            <cfset Application.startTime = Now()>
            <cfset Application.counter = 0>
            <cfset Application.config = { maxUsers: 1000, maintenanceMode: false }>
        </cfif>
    </cflock>
</cfif>

<cfoutput>
    <p>App: #encodeForHTML(Application.appName)#</p>
    <p>Started: #DateFormat(Application.startTime, "full")#</p>
    <p>Counter: #Application.counter#</p>
</cfoutput>

<cflock scope="Application" timeout="10" type="exclusive">
    <cfset Application.counter++>
</cflock>
