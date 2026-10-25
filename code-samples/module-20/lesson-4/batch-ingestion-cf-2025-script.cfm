<!---
  Auto-generated from modules-data.js (getModule20Data)
  codeTitle: Batch ingestion (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
vectorStoreClient = VectorStore({ provider: "INMEMORY", embeddingModel: { provider: "openai", modelName: "text-embedding-3-small", apiKey: application.apiKey } });
batch = [];
for (i = 1; i <= 5; i++) {
    arrayAppend(batch, { text: "Training fact number " & i & " about ColdFusion RAG.", metadata: { batch: i } });
}
ids = vectorStoreClient.addAll(batch);
writeOutput("Batched " & arrayLen(ids) & " chunks.");
</cfscript>
