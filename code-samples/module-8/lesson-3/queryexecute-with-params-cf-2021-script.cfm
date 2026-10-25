<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: queryExecute with params (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="form.status" default="demo">

// CF 2021+ - Safe query (script)
<cfscript>
    qUser = queryExecute(
        "SELECT userId, userName, email FROM users WHERE userId = :id AND status = :status",
        {
            id: { value: url.id, cfsqltype: "cf_sql_integer" },
            status: { value: form.status, cfsqltype: "cf_sql_varchar" }
        },
        { datasource: "CFTrainingDSN" }
    );
</cfscript>
