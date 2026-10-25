<!---
  Auto-generated from modules-data.js (getModule10Data)
  codeTitle: EntityLoad order with customer (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!---
  Module 10 lesson 4 - many-to-one: ShopOrder -> TrainingUser (tags).
  Entity CFCs: ShopOrder.cfc, TrainingUser.cfc
  Verified: Adobe EntityLoad; advanced ORM mapping (many-to-one).
--->

<!--- Filter + unique=true returns a single entity (Adobe EntityLoad). --->
<cfset ord = entityLoad("ShopOrder", { orderId: 100 }, true)>

<cfoutput>
	<h1>Order and customer (tags)</h1>
	<p>
		<code>ShopOrder</code> maps <code>orders</code>; <code>customer</code> is a many-to-one to
		<code>TrainingUser</code> on <code>customerId</code>. Accessing the getter loads the related user when lazy is enabled.
	</p>

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
