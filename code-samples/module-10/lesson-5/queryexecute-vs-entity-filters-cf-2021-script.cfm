<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: queryExecute vs entity filters (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 5 - SQL count vs entityLoad (script).   Verified: Adobe queryExecute; EntityLoad.

<cfscript>
	qAgg = queryExecute(
		"SELECT COUNT(*) AS cnt FROM products WHERE active = ?",
		[ 1 ],
		{ datasource: "CFTrainingDSN" }
	);
	ormList = entityLoad("Product", { active: 1 });
	cnt = qAgg.cnt[1];
</cfscript>

<cfoutput>
	<h1>SQL vs ORM for the same rows (script)</h1>
	<p>Same comparison with <code>queryExecute</code> and <code>entityLoad</code> in <code>&lt;cfscript&gt;</code>.</p>

	<h2>SQL row count</h2>
	<p>#EncodeForHTML(toString(cnt))# active product(s) (COUNT query).</p>

	<h2>ORM entities loaded</h2>
	<p>#arrayLen(ormList)# <code>Product</code> instance(s) returned by <code>entityLoad</code>.</p>
</cfoutput>
