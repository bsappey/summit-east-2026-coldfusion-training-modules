<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cfthread metadata after join (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 11 lesson 2 - metadata (script + cfoutput).   Verified: Adobe cfthread scope variables.
<cfsetting showDebugOutput="false">

<cfthread action="run" name="slow" delayMs="30">
	<cfset sleep(attributes.delayMs)>
	<cfset thread.done = true>
</cfthread>

<cfthread action="join" name="slow" />

<cfscript>
	meta = cfthread.slow;
</cfscript>

<cfoutput>
	<h1>Thread metadata (script)</h1>
	<ul>
		<li><strong>Name:</strong> #encodeForHTML(meta.name)#</li>
		<li><strong>Status:</strong> #encodeForHTML(meta.status)#</li>
		<li><strong>ElapsedTime:</strong> #encodeForHTML(toString(meta.elapsedTime))#</li>
	</ul>
</cfoutput>
