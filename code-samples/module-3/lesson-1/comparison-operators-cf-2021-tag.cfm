<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Comparison Operators (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Comparison Operators --->
<cfset x = 10>
<cfset y = 20>
<cfset z = 10>
<cfset name1 = "John">
<cfset name2 = "Jane">

<!--- Equality operators --->
<cfif x EQ z>
    <cfset result1 = "x equals z">
</cfif>

<cfif x NEQ y>
    <cfset result2 = "x does not equal y">
</cfif>

<!--- Comparison operators --->
<cfif x GT y>
    <cfset result3 = "x is greater than y">
<cfelseif x LT y>
    <cfset result3 = "x is less than y">
</cfif>

<cfif x GTE z>
    <cfset result4 = "x is greater than or equal to z">
</cfif>

<cfif x LTE y>
    <cfset result5 = "x is less than or equal to y">
</cfif>

<!--- String comparison --->
<cfif name1 EQ name2>
    <cfset result6 = "Names are equal">
<cfelse>
    <cfset result6 = "Names are different">
</cfif>

<cfoutput>
    <h3>Comparison Results</h3>
    <p>#result1#</p>
    <p>#result2#</p>
    <p>#result3#</p>
    <p>#result4#</p>
    <p>#result5#</p>
    <p>#result6#</p>
</cfoutput>
