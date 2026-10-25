<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Switch Statements (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Switch Statements --->
<cfset dayOfWeek = DayOfWeek(Now())>
<cfset userRole = "admin">

<!--- Basic switch --->
<cfswitch expression="#dayOfWeek#">
    <cfcase value="1">
        <cfset dayName = "Sunday">
    </cfcase>
    <cfcase value="2">
        <cfset dayName = "Monday">
    </cfcase>
    <cfcase value="3,4,5">
        <cfset dayName = "Weekday">
    </cfcase>
    <cfdefaultcase>
        <cfset dayName = "Other">
    </cfdefaultcase>
</cfswitch>

<!--- Switch with multiple values --->
<cfswitch expression="#userRole#">
    <cfcase value="admin,superadmin">
        <cfset accessLevel = "Full Access">
    </cfcase>
    <cfcase value="editor">
        <cfset accessLevel = "Edit Access">
    </cfcase>
    <cfcase value="viewer">
        <cfset accessLevel = "Read Only">
    </cfcase>
    <cfdefaultcase>
        <cfset accessLevel = "No Access">
    </cfdefaultcase>
</cfswitch>

<cfoutput>
    <p>Day: #dayName#</p>
    <p>Access Level: #accessLevel#</p>
</cfoutput>
