<!---
  Auto-generated from modules-data.js (getModule16Data)
  codeTitle: systemMessage() (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.3 });
agent = Agent({ chatModel: chatModel, chatMemory: { type: "messageWindowChatMemory", maxMessages: 10, perUser: true } });
agent.systemMessage("You are a scientist. Be concise.");
response = agent.chat("Why is the sky blue? One short sentence.", "demoUser");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

