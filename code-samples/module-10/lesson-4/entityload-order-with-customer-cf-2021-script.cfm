<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: EntityLoad order with customer (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// Module 10 lesson 4 - many-to-one load (script).   Verified: Adobe EntityLoad; ORM associations.

<cfscript>
	ord = entityLoad("ShopOrder", { orderId: 100 }, true);
</cfscript>

<cfoutput>
	<h1>Order and customer (script)</h1>
	<p>Same lookup using <code>entityLoad</code> in <code>&lt;cfscript&gt;</code>.</p>

	<h2>Order ##100</h2>
	<cfif isNull(ord)>
		<p class="text-danger">No row found - ensure the training database is seeded (orderId starts at 100).</p>
	<cfelse>
		<ul>
			<li><strong>status:</strong> #EncodeForHTML(ord.getStatus())#</li>
			<li><strong>orderDate:</strong> #EncodeForHTML(toString(ord.getOrderDate()))#</li>
			<li><strong>customer userName:</strong> #EncodeForHTML(ord.getCustomer().getUserName())#</li>
			<li><strong>customer email:</strong> #EncodeForHTML(ord.getCustomer().getEmail())#</li>
		</ul>
	</cfif>
</cfoutput>
