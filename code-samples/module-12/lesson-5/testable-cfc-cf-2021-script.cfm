<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Testable CFC (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
public numeric function getOrderTotal(required numeric orderId) {
    var order = variables.orderGateway.getById(arguments.orderId);
    return order.total;
}
</cfscript>
