<!---
  Auto-generated from modules-data.js (getModule18Data)
  codeTitle: Client with embedding model (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
// Classroom: INMEMORY. For production use milvus / pinecone / qdrant / chroma with collectionName + dimension.
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
ids = vectorStoreClient.addAll([{ text: "ColdFusion integrates with vector stores.", metadata: { section: "overview" } }, { text: "Vector stores power semantic search and RAG.", metadata: { section: "concepts" } }]);
writeOutput("Added: " & encodeForHTML(serializeJSON(ids)));
</cfscript>
