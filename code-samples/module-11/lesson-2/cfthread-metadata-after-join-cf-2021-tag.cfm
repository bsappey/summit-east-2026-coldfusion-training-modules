<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cfthread metadata after join (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 11 lesson 2 - thread metadata (cfthread scope after join).
  Verified: Adobe cfthread metadata (Status, ElapsedTime, Name).
--->
<cfsetting showDebugOutput="false">

<cfthread action="run" name="slow" delayMs="30">
	<!--- Use sleep() inside the worker (threads cannot spawn child cfthread run). --->
	<cfset sleep(attributes.delayMs)>
	<cfset thread.done = true>
</cfthread>

<cfthread action="join" name="slow" />

<cfoutput>
	<h1>Thread metadata (tags)</h1>
	<ul>
		<li><strong>Name:</strong> #encodeForHTML(cfthread.slow.name)#</li>
		<li><strong>Status:</strong> #encodeForHTML(cfthread.slow.status)#</li>
		<li><strong>ElapsedTime:</strong> #encodeForHTML(toString(cfthread.slow.elapsedTime))#</li>
	</ul>
</cfoutput>
