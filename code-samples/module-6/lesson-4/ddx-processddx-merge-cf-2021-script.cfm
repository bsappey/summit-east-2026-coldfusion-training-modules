<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: DDX processddx merge (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>DDX processddx merge (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Abbreviated; see code-samples/module-6/lesson-4/ for runnable demo that generates chapters + DDX XML ---&gt;
&lt;cfscript&gt;
    // After writing merge.ddx and source PDFs:
    inputStruct = { "Doc1": chap1Path, "Doc2": chap2Path };
    outputStruct = { "Out1": mergedPath };
    if (isDDX(ddxPath)) {
        cfpdf(action="processddx", ddxfile=ddxPath, inputfiles=inputStruct, outputfiles=outputStruct, name="ddxResult");
        writeOutput("Status: " &amp; ddxResult.Out1);
    }
&lt;/cfscript&gt;</pre>

