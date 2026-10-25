<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Structs (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
user = { id: 1, name: "Jane", role: "admin" };
user.email = "jane@example.com";
writeOutput(user.name & " (" & user["role"] & ")");
if (structKeyExists(user, "phone")) {
    writeOutput(user.phone);
}
</cfscript>
