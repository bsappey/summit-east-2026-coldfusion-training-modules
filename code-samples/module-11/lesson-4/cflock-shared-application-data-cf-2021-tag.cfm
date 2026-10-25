<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cflock shared application data (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 11 lesson 4 - cflock on application scope (tags).
  Verified: Adobe cflock; thread safety with shared scopes.
--->
<cfsetting showDebugOutput="false">

<!--- Init + read-modify-write in one exclusive lock (avoids check-then-act races). --->
<cflock scope="application" type="exclusive" timeout="10">
	<cfif NOT structKeyExists(application, "_m11DemoCounter")>
		<cfset application._m11DemoCounter = 0>
	</cfif>
	<cfset application._m11DemoCounter = application._m11DemoCounter + 1>
	<cfset showCount = application._m11DemoCounter>
</cflock>

<cfoutput>
	<h1>cflock + application scope (tags)</h1>
	<p>Exclusive lock while incrementing a demo counter in the <code>application</code> scope (safe for concurrent requests).</p>
	<p><strong>Counter:</strong> #encodeForHTML(toString(showCount))#</p>
</cfoutput>
