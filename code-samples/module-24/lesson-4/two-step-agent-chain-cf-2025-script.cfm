<!---
  Auto-generated from modules-data.js (getModule24Data)
  codeTitle: Two-step agent chain (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
// Expected: a short summary line, then a one-word label
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2, maxTokens: 80 });
summary = chatModel.chat("Summarize in under ten words: ColdFusion agents can call CFC tools.");
label = chatModel.chat("Classify this as fact or opinion in one word: " & summary.message);
writeOutput("Summary: " & encodeForHTML(summary.message) & "<br>");
writeOutput("Label: " & encodeForHTML(label.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

