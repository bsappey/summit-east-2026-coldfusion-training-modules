<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cflock shared application data (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 11 lesson 4 - cflock + application (cfscript inside one tag lock).   Verified: Adobe cflock.
<cfsetting showDebugOutput="false">

<cflock scope="application" type="exclusive" timeout="10">
	<cfif NOT structKeyExists(application, "_m11DemoCounterB")>
		<cfset application._m11DemoCounterB = 0>
	</cfif>
	<cfscript>
		application._m11DemoCounterB = application._m11DemoCounterB + 1;
		showCount = application._m11DemoCounterB;
	</cfscript>
</cflock>

<cfoutput>
	<h1>cflock + application scope (script)</h1>
	<p><strong>Counter:</strong> #encodeForHTML(toString(showCount))#</p>
</cfoutput>
