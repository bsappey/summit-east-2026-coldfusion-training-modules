<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Session Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Session Scope Example
// Enable sessions in Application.cfc
// this.sessionManagement = true

// Set session data
Session.userId = 123;
Session.userName = "john.doe";
Session.loginTime = Now();
Session.cart = [];

// Access session data
writeOutput("<p>Welcome, " & Session.userName & "!</p>");
writeOutput("<p>Logged in: " & DateFormat(Session.loginTime, "full") & "</p>");
writeOutput("<p>Cart items: " & ArrayLen(Session.cart) & "</p>");

// Clear session on logout (CF 10+)
sessionInvalidate();
</cfscript>
