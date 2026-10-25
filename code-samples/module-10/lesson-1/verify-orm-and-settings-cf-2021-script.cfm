<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: Verify ORM and settings (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 1 - ORM smoke test (script).   Verified: Adobe EntityLoad; ormsettings (configure ORM).

<cfscript>
	probe = entityLoad("Product", 1, true);
	productName = probe.getProductName();
</cfscript>

<cfoutput>
	<h1>ORM configuration smoke test (script)</h1>
	<p>Same checks as the tag sample, using <code>&lt;cfscript&gt;</code> for the <code>entityLoad</code> call.</p>

	<h2>Live read</h2>
	<p>
		<code>entityLoad(&quot;Product&quot;, 1, true)</code> - product name:
		#EncodeForHTML(productName)#
	</p>
</cfoutput>
