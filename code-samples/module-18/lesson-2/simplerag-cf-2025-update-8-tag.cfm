<!---
  Auto-generated from modules-data.js (getModule18Data)
  codeTitle: simpleRAG() (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025 Update 8+ --->
<cfscript>
chatModel = ChatModel({
    provider: "openai",
    modelName: "gpt-4o-mini",
    apiKey: application.apiKey,
    temperature: 0.4
});
docsDir = expandPath("./docs/");
ragBot = simpleRAG(docsDir, chatModel, { minScore: 0.3, maxResults: 4 });
ragBot.ingest();
answer = ragBot.ask("How do I renew?");
writeOutput(encodeForHTML(answer.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

