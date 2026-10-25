<!---
  Auto-generated from modules-data.js (getModule23Data)
  codeTitle: try/catch around ChatModel (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Expected: OK (or a clear catch message if the provider fails)
try {
    chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0, maxTokens: 16, timeout: 20 });
    response = chatModel.chat("Reply with OK");
    writeOutput(encodeForHTML(response.message));
} catch (any e) {
    writeOutput("Unable to complete AI call. " & encodeForHTML(e.message));
}
</cfscript>
