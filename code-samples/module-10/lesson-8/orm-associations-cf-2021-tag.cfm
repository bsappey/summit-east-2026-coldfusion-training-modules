<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ORM associations (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>ORM associations (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Many-to-one property on ShopOrder.cfc (conceptual) ---&gt;
&lt;cfproperty name="customer" cfc="TrainingUser" fieldtype="many-to-one" fkcolumn="customerId" lazy="true"&gt;</pre>

