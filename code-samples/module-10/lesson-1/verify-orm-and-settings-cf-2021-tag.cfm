<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: Verify ORM and settings (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 1 - ORM enabled + typical ormsettings keys (tags).
  Verified: Adobe Application.cfc ORM; ormsettings struct (configure ORM).
--->

<cfset probe = entityLoad("Product", 1, true)>

<cfoutput>
	<h1>ORM configuration smoke test (tags)</h1>
	<p>
		This app sets <code>this.ormEnabled = true</code> and <code>this.ormsettings</code> in the root
		<code>Application.cfc</code> (Derby dialect, <code>cfclocation</code> for <code>resources/orm/entities</code>,
		<code>dbcreate = &quot;none&quot;</code> so Hibernate does not alter the seeded schema).
	</p>

	<h2>Typical ormsettings keys (reference)</h2>
	<ul>
		<li><code>dialect</code> - database dialect (here: <code>Derby</code>)</li>
		<li><code>cfclocation</code> - folder(s) containing persistent CFCs</li>
		<li><code>dbcreate</code> - <code>none</code> | <code>update</code> | <code>dropcreate</code> (training DB uses <code>none</code>)</li>
		<li><code>logSQL</code> - log Hibernate SQL to the console when true</li>
		<li><code>flushAtRequestEnd</code> - auto-flush ORM session at end of request</li>
	</ul>

	<h2>Live read</h2>
	<p>
		<code>entityLoad(&quot;Product&quot;, 1, true)</code> loaded product PK <code>1</code>:
		#EncodeForHTML(probe.getProductName())#
	</p>
</cfoutput>
