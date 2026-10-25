<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: cachePut / cacheGet (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    cacheKey = "activeUsers";
    if (!cacheIdExists(cacheKey)) {
        qUsers = queryExecute(
            "SELECT userId, userName FROM users WHERE active = 1",
            {},
            { datasource: "CFTrainingDSN" }
        );
        cachePut(cacheKey, qUsers, createTimeSpan(0, 1, 0, 0), createTimeSpan(0, 0, 15, 0));
    } else {
        qUsers = cacheGet(cacheKey);
    }
    writeOutput("Cached rows: " & qUsers.recordCount);
</cfscript>
