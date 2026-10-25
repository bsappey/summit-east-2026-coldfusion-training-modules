<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Public and private methods (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Public method calls private --->
<cffunction name="getFormattedTotal" returntype="string" access="public">
    <cfargument name="quantity" type="numeric" required="true">
    <cfargument name="unitPrice" type="numeric" required="true">
    <cfreturn numberFormat(calculateTotal(arguments.quantity, arguments.unitPrice), "0.00")>
</cffunction>
<cffunction name="calculateTotal" returntype="numeric" access="private">
    <!--- ... --->
</cffunction>
