<!---
  Auto-generated from modules-data.js (getModule24Data)
  codeTitle: Multi-model routing by task (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ - Expected: gpt-4o-mini: <five-word summary> --->
<cfset task = "summarize">
<cfset modelName = (task == "summarize" || task == "classify") ? "gpt-4o-mini" : "gpt-4o">
<cfset chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: modelName, temperature: 0.2 })>
<cfset response = chatModel.chat("Summarize in five words: ColdFusion ships native RAG and agents.")>
<cfoutput>#encodeForHTML(modelName & ": " & response.message)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

