<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ORM entity CFC mapping (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>ORM entity CFC mapping (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">component displayname="Product" table="products" persistent="true" accessors="true" {
    property name="productId" fieldtype="id" generator="native" ormtype="integer";
    property name="productName" ormtype="string" length="200";
    property name="unitPrice" ormtype="big_decimal";
    property name="categoryId" ormtype="integer";
    property name="active" ormtype="short";
    property name="status" ormtype="string" length="30";
}</pre>

