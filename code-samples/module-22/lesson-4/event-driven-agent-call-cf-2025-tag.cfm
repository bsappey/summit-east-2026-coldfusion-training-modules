<!---
  Auto-generated from modules-data.js (getModule22Data)
  codeTitle: Event-driven agent call (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ - event payload drives agent; Expected: short summary of the ticket note --->
<cfset eventPayload = { ticketId: "TKT-12345", note: "Customer asks for a status update on their open ticket." }>
<cfset chatModel = ChatModel({ provider: "openAi", apiKey: application.apiKey, modelName: "gpt-4o-mini", temperature: 0.2 })>
<cfset agent = Agent({
    chatModel: chatModel,
    tools: [{ cfc: "SupportTool", methods: [
        { method: "getTicketStatus", description: "Get support ticket status by ticketId." }
    ]}]
})>
<cfset prompt = "Ticket " & eventPayload.ticketId & ": " & eventPayload.note & " Reply in one sentence with the status.">
<cfset response = agent.chat(prompt, "webhook-" & eventPayload.ticketId)>
<cfoutput>#encodeForHTML(response.message)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

