<!---
  Auto-generated from modules-data.js (getModule24Data)
  codeTitle: Multi-model routing by task (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
// Expected: gpt-4o-mini: <short summary>
task = "summarize";
modelName = (task == "summarize" || task == "classify") ? "gpt-4o-mini" : "gpt-4o";
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: modelName, temperature: 0.2 });
response = chatModel.chat("Summarize in five words: ColdFusion ships native RAG and agents.");
writeOutput(encodeForHTML(modelName & ": " & response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

