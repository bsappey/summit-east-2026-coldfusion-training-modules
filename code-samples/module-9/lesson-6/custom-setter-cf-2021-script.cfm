<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Custom setter (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
public void function setEmail(required string email) {
    if (!isValid("email", arguments.email))
        throw("Invalid email");
    variables.email = arguments.email;
}
</cfscript>
