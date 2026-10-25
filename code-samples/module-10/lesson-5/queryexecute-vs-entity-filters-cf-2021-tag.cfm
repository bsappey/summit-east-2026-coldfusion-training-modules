<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: queryExecute vs entity filters (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 5 - reporting-style SQL vs ORM entity list (tags).
  Verified: Adobe queryExecute; EntityLoad with filter struct.
--->

<cfquery name="qAgg" datasource="CFTrainingDSN">
	SELECT COUNT(*) AS cnt
	FROM products
	WHERE active = 1
</cfquery>

<cfset ormList = entityLoad("Product", { active: 1 })>

<cfoutput>
	<h1>SQL vs ORM for the same rows (tags)</h1>
	<p>
		For aggregates and heavy reporting, prefer SQL (<code>cfquery</code> / <code>queryExecute</code>).
		ORM is convenient for loading objects you will modify or navigate - here both approaches touch the same
		<code>active = 1</code> filter on the training <code>products</code> table.
	</p>

	<h2>SQL row count</h2>
	<p>#EncodeForHTML(toString(qAgg.cnt))# active product(s) (COUNT query).</p>

	<h2>ORM entities loaded</h2>
	<p>#arrayLen(ormList)# <code>Product</code> instance(s) returned by <code>entityLoad</code> (full rows, not a count-only optimization).</p>
</cfoutput>
