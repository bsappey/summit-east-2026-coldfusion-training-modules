<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cferror (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>cferror (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Application.cfc ---&gt;
&lt;cfcomponent&gt;
    &lt;cferror type="exception" template="error.cfm" mailto="admin@example.com"&gt;
    &lt;cferror type="request" template="404.cfm"&gt;
&lt;/cfcomponent&gt;

&lt;!--- error.cfm: use error.message, error.detail for logging; show generic message to user ---&gt;</pre>

