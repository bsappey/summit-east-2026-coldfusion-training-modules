<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Output encoding (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Safe defaults so Run works on GET without a prior form post --->
<cfparam name="form.userName" default="demo">
<cfparam name="url.q" default="demo">

// CF 2021+ - Safe output (script)
<cfscript>
    param name="form.userName" default="Guest";
    param name="url.q" default="coldfusion";
    userName = form.userName;
    searchTerm = url.q;
    writeOutput("<p>Hello, " & encodeForHTML(userName) & ".</p>");
    writeOutput("<p><input type=text value=""" & encodeForHTMLAttribute(searchTerm) & """ readonly></p>");
    writeOutput("<p><a href=""search.cfm?q=" & encodeForURL(searchTerm) & """>Search again</a></p>");
</cfscript>
