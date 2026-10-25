<!---
  Auto-generated from modules-data.js (getModule11Data)
  codeTitle: cfthread run and join (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 11 lesson 1 - cfthread (script uses tags for cfthread; output in cfoutput).   Verified: Adobe cfthread.
<cfsetting showDebugOutput="false">

<cfthread action="run" name="worker" note="parallel">
	<cfset thread.result = "Processed: " & attributes.note>
</cfthread>

<cfthread action="join" name="worker" />

<cfscript>
	st = cfthread.worker;
</cfscript>

<cfoutput>
	<h1>cfthread run + join (script)</h1>
	<p><strong>Status:</strong> #encodeForHTML(st.status)#</p>
	<p><strong>Result:</strong> #encodeForHTML(st.result)#</p>
</cfoutput>
