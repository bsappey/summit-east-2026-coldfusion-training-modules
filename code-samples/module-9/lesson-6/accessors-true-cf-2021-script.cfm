<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: accessors="true" (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>accessors=&quot;true&quot; (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">component accessors="true" {
    property name="firstName" type="string";
    property name="lastName" type="string";
    property name="createdAt" type="date" getter="true" setter="false";
    public User function init() {
        setFirstName("");
        setLastName("");
        variables.createdAt = now();
        return this;
    }
}</pre>

