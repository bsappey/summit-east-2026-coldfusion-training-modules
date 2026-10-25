<!---
  Auto-generated from modules-data.js (getModule18Data)
  codeTitle: VectorStore text search (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025 Update 8+ - VectorStore search --->
<cfscript>
vectorStoreClient = VectorStore({
    provider: "INMEMORY",
    embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey }
});
vectorStoreClient.addAll([
    { text: "ColdFusion vector stores provide a unified API over multiple providers.", metadata: { topic: "cf-vector" } },
    { text: "Retrieval-Augmented Generation uses a vector store as a retriever.", metadata: { topic: "rag" } }
]);
results = vectorStoreClient.search({ text: "ColdFusion vector store RAG", topK: 3, minScore: 0 });
writeDump(var=results, label="search results");
</cfscript>
