<!---
  Auto-generated from modules-data.js (getModule14Data)
  codeTitle: Anthropic and Gemini ChatModel configs (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
anthropicConfig = { provider: "anthropic", apiKey: application.anthropicApiKey, modelName: "claude-sonnet-4-20250514", temperature: 0.5 };
geminiConfig = { provider: "gemini", apiKey: application.geminiApiKey, modelName: "gemini-2.0-flash", temperature: 0.5 };
// Training default: OpenAI. Swap to anthropicConfig / geminiConfig when those keys are set.
openAiConfig = { provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.5 };
chatModel = ChatModel(openAiConfig);
response = chatModel.chat("Reply with one word: ready");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

