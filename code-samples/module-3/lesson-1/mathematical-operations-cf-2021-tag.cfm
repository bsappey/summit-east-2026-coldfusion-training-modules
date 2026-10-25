<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Mathematical Operations (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Mathematical Operators --->
<cfset a = 10>
<cfset b = 3>
<cfset c = 2>

<!--- Basic operations --->
<cfset sum = a + b>
<cfset difference = a - b>
<cfset product = a * b>
<cfset quotient = a / b>
<cfset remainder = a MOD b>
<cfset power = a ^ c>

<!--- Increment and decrement --->
<cfset counter = 0>
<cfset counter++>
<cfset counter++>
<cfset counter-->

<cfoutput>
    <h3>Mathematical Operations</h3>
    <p>a = #a#, b = #b#, c = #c#</p>
    <p>Sum: #a# + #b# = #sum#</p>
    <p>Difference: #a# - #b# = #difference#</p>
    <p>Product: #a# * #b# = #product#</p>
    <p>Quotient: #a# / #b# = #quotient#</p>
    <p>Remainder: #a# MOD #b# = #remainder#</p>
    <p>Power: #a# ^ #c# = #power#</p>
    <p>Counter: #counter#</p>
</cfoutput>
