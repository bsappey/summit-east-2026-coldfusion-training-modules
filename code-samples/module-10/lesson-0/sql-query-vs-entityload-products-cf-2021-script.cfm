<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: SQL query vs EntityLoad products (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 0 - compare queryExecute vs entityLoad (script).   Verified: Adobe queryExecute, EntityLoad (ORM).

<cfscript>
	sql = "SELECT productId, productName, unitPrice FROM products FETCH FIRST 10 ROWS ONLY";
	qProducts = queryExecute(sql, {}, { datasource: "CFTrainingDSN" });
	ormRows = entityLoad("Product", {}, "productName asc", { maxResults: 10 });
</cfscript>

<cfoutput>
	<h1>SQL vs ORM (script)</h1>
	<p>Same comparison using <code>queryExecute</code> and <code>entityLoad</code> in <code>&lt;cfscript&gt;</code>.</p>

	<h2>queryExecute result</h2>
	<table border="1" cellpadding="4">
		<tr><th>productId</th><th>productName</th><th>unitPrice</th></tr>
		<cfloop query="qProducts">
			<tr>
				<td>#EncodeForHTML(toString(productId))#</td>
				<td>#EncodeForHTML(productName)#</td>
				<td>#EncodeForHTML(toString(unitPrice))#</td>
			</tr>
		</cfloop>
	</table>

	<h2>entityLoad result</h2>
	<table border="1" cellpadding="4">
		<tr><th>productId</th><th>productName</th><th>unitPrice</th></tr>
		<cfloop array="#ormRows#" index="p">
			<tr>
				<td>#EncodeForHTML(toString(p.getProductId()))#</td>
				<td>#EncodeForHTML(p.getProductName())#</td>
				<td>#EncodeForHTML(toString(p.getUnitPrice()))#</td>
			</tr>
		</cfloop>
	</table>
</cfoutput>
