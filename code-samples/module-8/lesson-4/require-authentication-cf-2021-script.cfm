<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Require authentication (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Require login (script)
<cfscript>
    if (!structKeyExists(session, "authenticated") || !session.authenticated) {
        location("login.cfm", false);
    }
</cfscript>
