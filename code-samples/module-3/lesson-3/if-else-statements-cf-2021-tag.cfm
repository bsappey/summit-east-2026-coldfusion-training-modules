<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: If/Else Statements (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: If/Else Statements --->
<cfset score = 85>

<cfif score GTE 90>
    <cfset grade = "A">
<cfelseif score GTE 80>
    <cfset grade = "B">
<cfelseif score GTE 70>
    <cfset grade = "C">
<cfelse>
    <cfset grade = "F">
</cfif>

<cfoutput>Grade: #grade#</cfoutput>
