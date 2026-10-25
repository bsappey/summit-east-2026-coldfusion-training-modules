<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Parameterized queries with cfqueryparam and queryExecute (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="form.statusList" default="demo">

<!--- Single value --->
<cfquery name="qUser" datasource="CFTrainingDSN">
    SELECT userId, userName, email
    FROM users
    WHERE userId = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
</cfquery>

<!--- IN clause with list --->
<cfquery name="qOrders" datasource="CFTrainingDSN">
    SELECT orderId, customerId, orderDate
    FROM orders
    WHERE status IN (<cfqueryparam value="#Form.statusList#" cfsqltype="cf_sql_varchar" list="true">)
</cfquery>
