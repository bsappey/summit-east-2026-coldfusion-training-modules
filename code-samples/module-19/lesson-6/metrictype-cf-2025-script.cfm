<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: metricType (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
results = vectorStoreClient.search({ text: "semantic similarity", topK: 2, minScore: 0 });
writeOutput("Demo store ready; hosted providers also accept metricType (e.g. cosine). Hits: " & arrayLen(results));
</cfscript>
