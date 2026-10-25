<!---
  Auto-generated from modules-data.js (getModule20Data)
  codeTitle: DocumentService() (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
docService = documentService();
documents = docService.load({ path: expandPath("./docs/"), pattern: "*.txt" });
segments = docService.split(documents, { chunkSize: 500, chunkOverlap: 50 });
vectorStore = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
result = docService.ingest(segments, vectorStore, { batchSize: 50, continueOnError: true });
writeDump(var=result, label="ingest stats");
docService.close();
</cfscript>
