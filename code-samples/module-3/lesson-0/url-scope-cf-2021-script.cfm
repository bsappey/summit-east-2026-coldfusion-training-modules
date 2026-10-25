<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: URL Scope (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="url.id" default="1">
<cfparam name="url.page" default="demo">
<cfparam name="url.filter" default="demo">

// URL Scope Example (page.cfm?id=123&page=2&filter=active)
param name="URL.id" type="numeric" default="0";
param name="URL.page" type="numeric" default="1";
param name="URL.filter" type="string" default="";
if (URL.page < 1) { URL.page = 1; }
// Classroom: show validated params; real apps use queryExecute + cf_sql_* binds
writeOutput("<p>id=" & encodeForHTML(URL.id) & " page=" & encodeForHTML(URL.page) & " filter=" & encodeForHTML(URL.filter) & "</p>");
writeOutput("<p>Example parameterized WHERE would bind id/filter and OFFSET " & ((URL.page - 1) * 10) & ".</p>");
