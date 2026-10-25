<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Loop Examples (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Loops --->
<!--- For Loop --->
<cfloop from="1" to="10" index="i">
    <cfoutput>#i# </cfoutput>
</cfloop>

<!--- For-In Loop (Arrays) --->
<cfset colors = ["Red", "Green", "Blue"]>
<cfloop array="#colors#" index="color">
    <cfoutput>#color#<br></cfoutput>
</cfloop>

<!--- For-In Loop (Structs) --->
<cfset person = {name: "John", age: 30, city: "NYC"}>
<cfloop collection="#person#" item="key">
    <cfoutput>#key#: #person[key]#<br></cfoutput>
</cfloop>

<!--- While Loop --->
<cfset counter = 1>
<cfloop condition="counter LTE 5">
    <cfoutput>#counter# </cfoutput>
    <cfset counter++>
</cfloop>
