<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Secure cookie (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Secure cookie (script)
<cfscript>
    value = "demo";
    cookie.pref = { value: encodeForURL(value), secure: true, httpOnly: true, sameSite: "Strict" };
    writeOutput("<p>Set secure cookie pref=" & encodeForHTML(value) & "</p>");
</cfscript>
