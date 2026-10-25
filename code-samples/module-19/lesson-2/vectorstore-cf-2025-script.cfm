<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: VectorStore (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Classroom: INMEMORY. For production set provider milvus/pinecone/qdrant/chroma + collection settings.
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
ids = vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
writeOutput("Added: " & encodeForHTML(serializeJSON(ids)));
</cfscript>
