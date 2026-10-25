<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Cookie Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Cookie Scope Example
// Read existing cookie (may not include cookies set earlier in this same response)
if (StructKeyExists(Cookie, "userPref")) {
    userPreference = Cookie.userPref;
} else {
    userPreference = "default";
}

// Set cookie via assignment (script); Set-Cookie is sent with the response
cookie.userPref = "dark";

// Output the value we set this request (do not assume Cookie.userPref is already readable)
writeOutput("<p>Previous preference (Cookie scope): " & encodeForHTML(userPreference) & "</p>");
writeOutput("<p>New preference (set this request): dark</p>");
</cfscript>
