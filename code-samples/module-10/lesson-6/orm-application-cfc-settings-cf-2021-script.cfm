<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ORM Application.cfc settings (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>ORM Application.cfc settings (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">component {
    this.ormEnabled = true;
    this.datasource = "CFTrainingDSN";
    this.ormsettings = {
        dialect: "Derby",
        cfclocation: expandPath("/resources/orm/entities"),
        dbcreate: "none",
        logSQL: false,
        flushAtRequestEnd: true
    };
}</pre>

