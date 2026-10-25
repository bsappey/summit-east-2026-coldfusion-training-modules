<!---
  Auto-generated from modules-data.js (getModule5Data)
  codeTitle: Member functions side-by-side (CF 11+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    // Arrays: traditional vs member
    bands = ["Beatles"];
    // arrayAppend(bands, "U2");
    bands.append("U2");
    writeOutput("Count: " & bands.len());

    // Structs: traditional vs member
    user = { name: "Sam" };
    // if (structKeyExists(user, "role"))
    if (!user.keyExists("role")) {
        user.insert("role", "dev");
    }
</cfscript>
