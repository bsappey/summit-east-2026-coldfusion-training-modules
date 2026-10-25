<!---
  Auto-generated from modules-data.js (getModule16Data)
  codeTitle: Tool CFC (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Tool CFC (CF 2025+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- SupportTool.cfc (simplified) ---&gt;
&lt;cfcomponent&gt;
    &lt;cffunction name="getTicketStatus" returntype="string" access="public"&gt;
        &lt;cfargument name="ticketId" type="string" required="true"&gt;
        &lt;!--- Look up in DB/API ---&gt;
        &lt;cfreturn "in progress"&gt;
    &lt;/cffunction&gt;
    &lt;cffunction name="createTicket" returntype="struct" access="public"&gt;
        &lt;cfargument name="summary" type="string" required="true"&gt;
        &lt;cfargument name="priority" type="string" required="true"&gt;
        &lt;cfreturn { id: createUUID(), status: "new" }&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

