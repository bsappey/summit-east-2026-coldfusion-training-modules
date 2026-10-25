<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Wiring dependencies (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Wiring with mocks (no real datasource required) --->
<cfset application.ds = "CFTrainingDSN">
<cfset application.orderGateway = {
    getById: function(orderId) {
        return queryNew("orderId,total", "integer,decimal", [{ orderId: orderId, total: 19.99 }]);
    }
}>
<cfset application.orderService = {
    gateway: application.orderGateway,
    getOrder: function(orderId) {
        return application.orderGateway.getById(orderId);
    }
}>
<cfset order = application.orderService.getOrder(1)>
<cfoutput><p>Wired mock order total: #order.total#</p></cfoutput>
