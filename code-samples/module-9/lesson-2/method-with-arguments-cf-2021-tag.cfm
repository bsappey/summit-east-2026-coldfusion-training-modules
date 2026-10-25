<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Method with arguments (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag: method with args --->
<cffunction name="calculateTotal" returntype="numeric" access="public">
    <cfargument name="quantity" type="numeric" required="true">
    <cfargument name="unitPrice" type="numeric" required="true">
    <cfargument name="discount" type="numeric" default="0">
    <cfreturn arguments.quantity * arguments.unitPrice * (1 - arguments.discount)>
</cffunction>
