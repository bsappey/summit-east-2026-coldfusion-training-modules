<!---
  Auto-generated from modules-data.js (getModule22Data)
  codeTitle: API tool agent (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ - API-style tool agent; Expected: mentions shipped / ORD-1001 --->
<cfset chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2 })>
<cfset agent = Agent({
    chatModel: chatModel,
    tools: [{ cfc: "SupportTool", methods: [
        { method: "getOrderStatus", description: "Look up order status by orderId. Use for shipment questions." }
    ]}]
})>
<cfset response = agent.chat("Status of order ORD-1001?", "user1")>
<cfoutput>#encodeForHTML(response.message)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

