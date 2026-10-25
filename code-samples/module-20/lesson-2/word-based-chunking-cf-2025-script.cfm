<!---
  Auto-generated from modules-data.js (getModule20Data)
  codeTitle: Word-based chunking (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
chunkDocument = function(text, wordsPerChunk=40) {
    words = listToArray(reReplace(text, "\s+", " ", "all"), " ");
    chunks = [];
    for (i = 1; i <= arrayLen(words); i += wordsPerChunk) {
        endAt = min(i + wordsPerChunk - 1, arrayLen(words));
        arrayAppend(chunks, arrayToList(words.slice(i, endAt - i + 1), " "));
    }
    return chunks;
};
sample = "ColdFusion RAG loads documents, splits them into chunks, embeds each chunk, and stores vectors for later retrieval.";
chunks = chunkDocument(sample, 8);
writeDump(var=chunks, label="chunks");
</cfscript>
