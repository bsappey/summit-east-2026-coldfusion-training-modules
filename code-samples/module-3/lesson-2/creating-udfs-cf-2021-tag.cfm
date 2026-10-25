<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Creating UDFs (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Define a UDF --->
<cffunction name="calculateTotal" returntype="numeric">
    <cfargument name="price" type="numeric" required="true">
    <cfargument name="quantity" type="numeric" required="true" default="1">
    <cfargument name="discount" type="numeric" required="false" default="0">
    
    <cfset var total = (price * quantity) * (1 - discount / 100)>
    <cfreturn total>
</cffunction>

<!--- Use the UDF --->
<cfset result = calculateTotal(100, 2, 10)>
<cfoutput>Total: #DollarFormat(result)#</cfoutput>
