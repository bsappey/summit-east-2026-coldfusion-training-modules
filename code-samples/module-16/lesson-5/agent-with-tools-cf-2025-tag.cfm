<!---
  Auto-generated from modules-data.js (getModule16Data)
  codeTitle: Agent with tools (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ --->
<cfset chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2 })>
<cfset agentConfig = {
    chatModel: chatModel,
    chatMemory: { type: "messageWindowChatMemory", maxMessages: 20, perUser: true },
    tools: [
        { cfc: "SupportTool", methods: [
            { method: "getTicketStatus", description: "Get the status of a support ticket by ID. Use when the user asks about ticket status." },
            { method: "createTicket", description: "Create a new support ticket. Use when the user wants to report an issue." }
        ] }
    ]
}>
<cfset agent = Agent(agentConfig)>
<cfset response = agent.chat("My ticket ID is TKT-12345. What is its status?", "user1")>
<cfoutput>#encodeForHTML(response.message)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

