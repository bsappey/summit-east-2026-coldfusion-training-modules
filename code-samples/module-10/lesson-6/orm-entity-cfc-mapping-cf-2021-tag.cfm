<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: ORM entity CFC mapping (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>ORM entity CFC mapping (CF 2021+) (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- resources/orm/entities/Product.cfc (tag-style properties) ---&gt;
&lt;cfcomponent displayname="Product" table="products" persistent="true" accessors="true"&gt;
    &lt;cfproperty name="productId" fieldtype="id" generator="native" ormtype="integer"&gt;
    &lt;cfproperty name="productName" ormtype="string" length="200"&gt;
    &lt;cfproperty name="unitPrice" ormtype="big_decimal"&gt;
    &lt;cfproperty name="categoryId" ormtype="integer"&gt;
    &lt;cfproperty name="active" ormtype="short"&gt;
    &lt;cfproperty name="status" ormtype="string" length="30"&gt;
&lt;/cfcomponent&gt;</pre>

