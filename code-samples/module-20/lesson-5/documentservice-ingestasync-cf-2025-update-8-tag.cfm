<!---
  Auto-generated from modules-data.js (getModule20Data)
  codeTitle: DocumentService ingestAsync() (CF 2025 Update 8+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2025 Update 8+ - ingestAsync + Future.get() --->
<cfscript>
docService = documentService();
documents = docService.load({ path: expandPath("./docs/"), pattern: "*.txt" });
segments = docService.split(documents, { chunkSize: 500, chunkOverlap: 50 });
vectorStore = VectorStore({
    provider: "INMEMORY",
    embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey }
});
future = docService.ingestAsync(segments, vectorStore);
result = future.get();
writeDump(var=result, label="async ingest");
docService.close();
</cfscript>
