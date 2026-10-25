<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: Metadata filter (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025+ --->
<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
results = vectorStoreClient.search({
    text: "vector API",
    topK: 5,
    minScore: 0,
    filter: { topic: "cf-vector" }
});
writeDump(var=results, label="filtered");
</cfscript>
