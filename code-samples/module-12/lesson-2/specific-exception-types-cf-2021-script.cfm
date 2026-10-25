<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: Specific exception types (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
try {
    q = queryExecute("SELECT 1", {}, { datasource: dsn });
} catch (database e) {
    // Handle DB errors
} catch (any e) {
    // Catch-all
}
</cfscript>
