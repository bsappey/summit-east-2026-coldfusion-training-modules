<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: runAsync Future get (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 11 lesson 3 - runAsync + Future.get() (tags + cfscript block).
  Verified: Adobe runAsync; Future (Asynchronous programming).
--->
<cfsetting showDebugOutput="false">

<cfscript>
	f = runAsync(function() {
		return 21 * 2;
	});
	ans = f.get();
</cfscript>

<cfoutput>
	<h1>runAsync + Future.get (tags page)</h1>
	<p><strong>Result:</strong> #encodeForHTML(toString(ans))#</p>
</cfoutput>
