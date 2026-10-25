<!---
  Auto-generated from modules-data.js (getModule16Data)
  codeTitle: Tool CFC (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Tool CFC (CF 2025+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">component {
    public string function getTicketStatus(required string ticketId) { return "in progress"; }
    public struct function createTicket(required string summary, required string priority) { return { id: createUUID(), status: "new" }; }
}</pre>

