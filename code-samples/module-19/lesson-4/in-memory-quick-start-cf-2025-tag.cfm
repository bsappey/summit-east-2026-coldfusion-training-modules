<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: In-memory quick start (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025+ --->
<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
results = vectorStoreClient.search({ text: "unified API for vectors", topK: 2, minScore: 0 });
writeDump(var=results, label="hits");
</cfscript>
