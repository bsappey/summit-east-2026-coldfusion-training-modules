<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Arguments Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Arguments Scope Example --->
<cffunction name="calculateTotal" returntype="numeric">
    <cfargument name="price" type="numeric" required="true">
    <cfargument name="quantity" type="numeric" default="1">
    <cfargument name="discount" type="numeric" default="0">
    
    <!--- Access via Arguments scope --->
    <cfset total = Arguments.price * Arguments.quantity>
    <cfset total = total - (total * Arguments.discount / 100)>
    
    <cfreturn total>
</cffunction>

<!--- Call function --->
<cfset result = calculateTotal(price=100, quantity=2, discount=10)>
<cfoutput>Total: #result#</cfoutput>
