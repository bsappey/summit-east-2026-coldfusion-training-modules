<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Scope Resolution (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Scope Resolution Example --->
<!--- BAD: Ambiguous - which scope? --->
<cfset name = "John">
<cfoutput>#name#</cfoutput>

<!--- GOOD: Explicit scope --->
<cfset Variables.name = "John">
<cfset Session.name = "Jane">
<cfoutput>
    Variables: #Variables.name#<br>
    Session: #Session.name#
</cfoutput>
