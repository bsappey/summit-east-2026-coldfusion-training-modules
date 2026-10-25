<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: EntityNew save and delete (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 3 - entityNew / entitySave / entityDelete (script transaction).   Verified: Adobe EntityNew, EntitySave, EntityDelete; transaction {} (CFScript).

<cfscript>
	resultMsg = "";
	transaction {
		p = entityNew("Product");
		p.setProductName("ORM temp " & getTickCount());
		p.setUnitPrice(0);
		p.setCategoryId(1);
		p.setDiscontinued(0);
		p.setActive(1);
		p.setStatus("active");
		entitySave(p);
		newId = p.getProductId();
		entityDelete(p);
		resultMsg = "Created and removed product id " & newId & " in one transaction.";
	}
</cfscript>

<cfoutput>
	<h1>Entity lifecycle (script)</h1>
	<p>Same flow using a <code>transaction { }</code> block in <code>&lt;cfscript&gt;</code>.</p>
	<p>#EncodeForHTML(resultMsg)#</p>
</cfoutput>
