<!---
  Auto-generated from modules-data.js (getModule18Data)
  codeTitle: simpleRAG getStatistics() (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<!--- CF 2025 Update 8+ - getStatistics --->
<cfscript>
chatModel = ChatModel({
    provider: "openai",
    modelName: "gpt-4o-mini",
    apiKey: application.apiKey,
    temperature: 0.2
});
vectorStore = VectorStore({
    provider: "INMEMORY",
    embeddingModel: {
        provider: "openai",
        modelName: "text-embedding-3-small",
        apiKey: application.apiKey
    }
});
ragBot = simpleRAG(expandPath("./docs/"), chatModel, { vectorStore: vectorStore });
ragBot.ingest();
stats = ragBot.getStatistics();
writeDump(stats);
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

