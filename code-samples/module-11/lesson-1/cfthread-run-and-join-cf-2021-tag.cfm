<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cfthread run and join (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 11 lesson 1 - cfthread run + join (tags).
  Verified: Adobe cfthread (action run, join); Using ColdFusion threads.
--->
<cfsetting showDebugOutput="false">

<cfthread action="run" name="worker" note="parallel">
	<cfset thread.result = "Processed: " & attributes.note>
</cfthread>

<cfthread action="join" name="worker" />

<cfoutput>
	<h1>cfthread run + join (tags)</h1>
	<p><strong>Status:</strong> #encodeForHTML(cfthread.worker.status)#</p>
	<p><strong>Result:</strong> #encodeForHTML(cfthread.worker.result)#</p>
</cfoutput>
