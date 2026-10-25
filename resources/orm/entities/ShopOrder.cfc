/**
 * Maps ORDERS table (component name avoids Hibernate reserved word "Order").
 * Many-to-one: customerId -> TrainingUser.userId
 * Verified: Adobe ORM advanced mapping - many-to-one (User Guide).
 */
component displayName="ShopOrder" table="orders" persistent="true" accessors="true" {

	property
		name="orderId"
		fieldtype="id"
		generator="native"
		ormtype="integer";

	property name="orderDate" ormtype="date";
	property name="status" ormtype="string" length="30";

	property
		name="customer"
		fieldtype="many-to-one"
		cfc="TrainingUser"
		fkcolumn="customerId"
		lazy="true";

}
