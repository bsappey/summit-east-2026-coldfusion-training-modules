<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: runAsync Future get (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 11 lesson 3 - runAsync (full cfscript page).   Verified: Adobe runAsync (CFML Reference).
<cfsetting showDebugOutput="false">
<cfscript>
	f = runAsync(function() {
		return 21 * 2;
	});
	writeOutput("<h1>runAsync + Future.get (script)</h1>");
	writeOutput("<p><strong>Result:</strong> " & encodeForHTML(toString(f.get())) & "</p>");
</cfscript>
