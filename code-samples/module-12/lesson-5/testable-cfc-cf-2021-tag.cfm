<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Testable CFC (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Testable: dependency injected --->
<cffunction name="getOrderTotal" returntype="numeric" access="public">
    <cfargument name="orderId" type="numeric" required="true">
    <cfset var order = variables.orderGateway.getById(arguments.orderId)>
    <cfreturn order.total>
</cffunction>
<!--- In test, pass a mock orderGateway that returns known data --->
