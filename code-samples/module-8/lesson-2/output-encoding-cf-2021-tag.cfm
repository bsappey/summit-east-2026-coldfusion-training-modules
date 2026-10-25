<!---
  Auto-generated from modules-data.js (getModule8Data)
  codeTitle: Output encoding (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Safe output --->
<cfparam name="form.userName" default="Guest">
<cfparam name="url.q" default="coldfusion">
<cfset userName = form.userName>
<cfset searchTerm = url.q>

<cfoutput>
<p>Hello, #encodeForHTML(userName)#.</p>
<input type="text" value="#encodeForHTMLAttribute(searchTerm)#" readonly>

<a href="search.cfm?q=#encodeForURL(searchTerm)#">Search again</a>
</cfoutput>
