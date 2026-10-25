<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: EntityNew save and delete (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 3 - entityNew, entitySave, entityDelete inside a transaction (tags).
  Verified: Adobe EntityNew, EntitySave, EntityDelete; cftransaction (ColdFusion tags).
--->

<cfset resultMsg = "">

<cftransaction>
	<cfset p = entityNew("Product")>
	<cfset p.setProductName("ORM temp " & getTickCount())>
	<cfset p.setUnitPrice(0)>
	<cfset p.setCategoryId(1)>
	<cfset p.setDiscontinued(0)>
	<cfset p.setActive(1)>
	<cfset p.setStatus("active")>
	<cfset entitySave(p)>
	<cfset newId = p.getProductId()>
	<cfset entityDelete(p)>
	<cfset resultMsg = "Created and removed product id " & newId & " in one transaction.">
</cftransaction>

<cfoutput>
	<h1>Entity lifecycle (tags)</h1>
	<p>
		<code>entityNew</code> creates a transient instance, <code>entitySave</code> inserts it,
		<code>entityDelete</code> removes it. Wrapped in <code>&lt;cftransaction&gt;</code> so the insert+delete
		commit together (your database should show no net new row after the request).
	</p>
	<p>#EncodeForHTML(resultMsg)#</p>
</cfoutput>
