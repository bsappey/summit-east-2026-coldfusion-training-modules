<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: onError (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>onError (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">public void function onError(required any exception, required string eventName) {
    log(type: "error", file: "app_errors", text: arguments.exception.message);
    include "error.cfm";
}</pre>

