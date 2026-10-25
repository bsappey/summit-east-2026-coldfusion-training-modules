<!---
  Auto-generated from modules-data.js (getModule16Data)
  codeTitle: Minimal Agent (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
chatConfig = { provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.3 };
chatModel = ChatModel(chatConfig);
agent = Agent({ chatModel: chatModel });
response = agent.chat("What is the capital of Japan? Answer in one short sentence.");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

