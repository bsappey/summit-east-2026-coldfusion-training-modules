<!---
  Auto-generated from modules-data.js (getModule2Data)
  codeTitle: Version detection (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
engineVersion = server.coldfusion.productVersion;
if (left(engineVersion, 4) >= "2023") {
    // Use 2023+ feature
} else {
    // Fallback for 2021
}
</cfscript>
