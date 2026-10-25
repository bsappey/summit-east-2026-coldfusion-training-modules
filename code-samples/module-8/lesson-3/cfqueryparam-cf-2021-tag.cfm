<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: cfqueryparam (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="form.status" default="demo">

<!--- CF 2021+ - Safe query (tag) --->
<cfquery name="qUser" datasource="CFTrainingDSN">
    SELECT userId, userName, email
    FROM users
    WHERE userId = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
      AND status = <cfqueryparam value="#form.status#" cfsqltype="cf_sql_varchar">
</cfquery>
