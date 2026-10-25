<!---
  Auto-generated from modules-data.js (getModule15Data)
  codeTitle: Logging options (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025+ --->
<cfset chatConfig = {
    provider: "openAi",
    apiKey: application.apiKey,
    modelName: "gpt-4o-mini",
    temperature: 0.5,
    logRequests: true,
    logResponses: true
}>
<cfset chatModel = ChatModel(chatConfig)>
<cfset response = chatModel.chat("Reply with one word: logged")>
<cfoutput>#encodeForHTML(response.message)#</cfoutput>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

