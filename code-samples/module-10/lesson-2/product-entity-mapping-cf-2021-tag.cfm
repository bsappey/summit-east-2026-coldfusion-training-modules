<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: Product entity mapping (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 2 - load mapped Product entities (tags).
  Entity CFC: resources/orm/entities/Product.cfc
  Verified: Adobe EntityLoad; define ORM mapping (persistent CFC).
--->

<cfset rows = entityLoad("Product", { categoryId: 1 }, "productName asc")>

<cfoutput>
	<h1>Persistent Product mapping (tags)</h1>
	<p>
		The <code>Product</code> component maps the <code>products</code> table in the training Derby database.
		This page filters by <code>categoryId = 1</code> and sorts by name. Compare with the lesson code blocks
		for tag-style <code>&lt;cfproperty&gt;</code> vs script <code>property</code> syntax on the component.
	</p>

	<h2>Products in category 1</h2>
	<table border="1" cellpadding="4">
		<tr><th>productId</th><th>productName</th><th>categoryId</th><th>status</th></tr>
		<cfloop array="#rows#" index="p">
			<tr>
				<td>#EncodeForHTML(toString(p.getProductId()))#</td>
				<td>#EncodeForHTML(p.getProductName())#</td>
				<td>#EncodeForHTML(toString(p.getCategoryId()))#</td>
				<td>#EncodeForHTML(p.getStatus())#</td>
			</tr>
		</cfloop>
	</table>
</cfoutput>
