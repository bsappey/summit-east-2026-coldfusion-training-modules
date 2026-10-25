<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Wiring dependencies (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Wiring with mocks (no real datasource required)
application.ds = "CFTrainingDSN";
application.orderGateway = {
    getById: function(orderId) {
        return queryNew("orderId,total", "integer,decimal", [{ orderId: orderId, total: 19.99 }]);
    }
};
application.orderService = {
    gateway: application.orderGateway,
    getOrder: function(orderId) {
        return application.orderGateway.getById(orderId);
    }
};
order = application.orderService.getOrder(1);
writeOutput("<p>Wired mock order total: " & order.total & "</p>");
</cfscript>
