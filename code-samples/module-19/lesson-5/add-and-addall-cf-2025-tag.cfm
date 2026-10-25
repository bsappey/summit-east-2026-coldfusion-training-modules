<!---
  Auto-generated from modules-data.js (getModule19Data)
  codeTitle: add and addAll (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025+ --->
<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
id1 = vectorStoreClient.add({ text: "ColdFusion embeds text automatically.", metadata: { topic: "embed" } });
ids = vectorStoreClient.addAll([{ text: "ColdFusion vector stores provide a unified API.", metadata: { topic: "cf-vector", product: "cf" } }, { text: "RAG uses a vector store as a retriever.", metadata: { topic: "rag", product: "cf" } }]);
writeOutput("add=" & encodeForHTML(serializeJSON(id1)) & " addAll=" & encodeForHTML(serializeJSON(ids)));
</cfscript>
