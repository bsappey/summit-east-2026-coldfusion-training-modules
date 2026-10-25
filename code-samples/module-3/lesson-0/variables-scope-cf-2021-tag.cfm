<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Variables Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Variables Scope Examples --->
<!--- Explicit Variables scope --->
<cfset Variables.userName = "John Doe">
<cfset Variables.cartTotal = 0>

<!--- Implicit Variables scope (default) --->
<cfset name = "John Doe">
<cfset cartTotal = 0>

<!--- Both are equivalent --->
<cfoutput>
    <p>Explicit: #Variables.userName#</p>
    <p>Implicit: #name#</p>
    <p>Same value: #(Variables.userName EQ name)#</p>
</cfoutput>
