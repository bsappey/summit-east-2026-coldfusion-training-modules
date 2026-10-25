<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: SQL query vs EntityLoad products (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 0 - compare JDBC query vs ORM entityLoad (tags).
  Datasource: CFTrainingDSN (Apache Derby, resources/database).
  Verified: Adobe cfquery, EntityLoad (ORM).
--->

<cfquery name="qProducts" datasource="CFTrainingDSN">
	SELECT productId, productName, unitPrice
	FROM products
	FETCH FIRST 10 ROWS ONLY
</cfquery>

<cfset ormRows = entityLoad("Product", {}, "productName asc", { maxResults: 10 })>

<cfoutput>
	<h1>SQL vs ORM (tags)</h1>
	<p>
		The first table is explicit SQL via <code>&lt;cfquery&gt;</code> against the training Derby database.
		The second uses Hibernate: <code>entityLoad</code> returns mapped <code>Product</code> objects (see <code>resources/orm/entities/Product.cfc</code>).
	</p>

	<h2>cfquery result</h2>
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
