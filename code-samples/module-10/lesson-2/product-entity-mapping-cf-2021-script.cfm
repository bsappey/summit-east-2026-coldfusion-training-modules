<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: Product entity mapping (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 2 - load mapped Product entities (script).   Verified: Adobe EntityLoad; persistent component mapping.

<cfscript>
    categoryId = 1; // demo default for Run link

	rows = entityLoad("Product", { categoryId: 1 }, "productName asc");
</cfscript>

<cfoutput>
	<h1>Persistent Product mapping (script)</h1>
	<p>Same filter using <code>entityLoad</code> inside <code>&lt;cfscript&gt;</code>.</p>

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
