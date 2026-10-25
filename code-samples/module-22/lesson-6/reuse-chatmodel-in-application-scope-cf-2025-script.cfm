<!---
  Auto-generated from modules-data.js (getModule22Data)
  codeTitle: Reuse ChatModel in application scope (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
// Expected: ready (reuse application.sharedChatModel across requests)
if (!structKeyExists(application, "sharedChatModel") || isNull(application.sharedChatModel)) {
    application.sharedChatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2, maxTokens: 32 });
}
response = application.sharedChatModel.chat("Reply with one word: ready");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

