<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Parameterized queries with cfqueryparam and queryExecute (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="form.statusList" default="demo">

// queryExecute with named params (struct)
<cfscript>
    qUser = queryExecute(
        "SELECT userId, userName, email FROM users WHERE userId = :id",
        { id: { value: URL.id, cfsqltype: "cf_sql_integer" } },
        { datasource: "CFTrainingDSN" }
    );

    qOrders = queryExecute(
        "SELECT orderId, customerId, orderDate FROM orders WHERE status IN (:statusList)",
        { statusList: { value: Form.statusList, cfsqltype: "cf_sql_varchar", list: true } },
        { datasource: "CFTrainingDSN" }
    );
</cfscript>
