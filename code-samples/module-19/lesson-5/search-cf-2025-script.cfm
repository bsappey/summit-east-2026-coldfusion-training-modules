<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: search (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
results = vectorStoreClient.search({ text: "How does RAG use vectors?", topK: 3, minScore: 0 });
writeDump(var=results, label="search");
</cfscript>
