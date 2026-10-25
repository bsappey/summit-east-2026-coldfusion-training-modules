<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Ternary Operator (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Ternary Operator --->
<cfset age = 25>
<cfset message = (age GTE 21) ? "Welcome to the show!" : "Sorry, you are not old enough to enter.">
<cfoutput>#message#</cfoutput>

<!--- Inline in output --->
<cfset isActive = true>
<cfoutput>Status: #(isActive ? "Active" : "Inactive")#</cfoutput>
