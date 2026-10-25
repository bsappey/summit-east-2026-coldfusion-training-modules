<!---
  Auto-generated from modules-data.js (getModule15Data)
  codeTitle: .chat() with struct (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
// Persona: Agent.systemMessage (ChatModel.chat() is string-only on this training build)
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2 });
agent = Agent({ chatModel: chatModel, chatMemory: { type: "messageWindowChatMemory", maxMessages: 5, perUser: true } });
agent.systemMessage("You are a code converter. Reply with code only.");
response = agent.chat("Convert writeOutput(x) from CFML to a one-line JavaScript console.log.", "demo");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

