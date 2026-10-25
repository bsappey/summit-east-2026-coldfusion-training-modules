<!---
  Auto-generated from modules-data.js (getModule17Data)
  codeTitle: Tool wrapping an API (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2 });
agent = Agent({ chatModel: chatModel, tools: [{ cfc: "SupportTool", methods: [{ method: "getOrderStatus", description: "Look up order status by order ID. Use when the user asks about a shipment or order. Argument: orderId." }] }] });
response = agent.chat("What is the status of order ORD-1001?", "user1");
writeOutput(encodeForHTML(response.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

