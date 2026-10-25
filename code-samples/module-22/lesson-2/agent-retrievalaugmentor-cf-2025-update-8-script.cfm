<!---
  Auto-generated from modules-data.js (getModule22Data)
  codeTitle: agent({ retrievalAugmentor }) (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfoutput><p><em>Optional runtime:</em> this sample may need packages, credentials, or services that are not configured in the training app. If it cannot run here, the message below explains the failure instead of a raw 500.</p></cfoutput>
<cftry>
<cfscript>
sharedStore = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
sharedStore.addAll([{ text: "To upgrade an Adobe plan, open Account > Plans > Upgrade, choose a higher tier, and confirm. Changes usually apply on the next billing cycle.", metadata: { topic: "upgrade" } }, { text: "To renew, open Account > Billing > Renew and confirm your payment method.", metadata: { topic: "renewal" } }]);
chatModel = ChatModel({ provider: "openai", modelName: "gpt-4o-mini", apiKey: application.apiKey, temperature: 0.3 });
queryService = agent({ chatModel: chatModel, retrievalAugmentor: { queryRouter: { contentRetrievers: [{ vectorStore: sharedStore, maxResults: 5, minScore: 0.3, description: "Knowledge base" }] } } });
answer = queryService.chat("How to upgrade Adobe plan?", "demo");
writeOutput(encodeForHTML(answer.message));
</cfscript>
<cfcatch type="any">
<cfoutput><h2>Sample could not run in this environment</h2><p>#encodeForHTML(cfcatch.message)#</p><p><small>#encodeForHTML(cfcatch.detail)#</small></p></cfoutput>
</cfcatch>
</cftry>

