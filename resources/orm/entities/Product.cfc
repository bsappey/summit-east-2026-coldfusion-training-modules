/**
 * Maps training DB table PRODUCTS (seeded in resources/database/buildDatabase.cfm).
 * Verified: Adobe ColdFusion ORM - persistent component, property mapping (User Guide).
 */
component displayName="Product" table="products" persistent="true" accessors="true" {

	property
		name="productId"
		fieldtype="id"
		generator="native"
		ormtype="integer";

	property name="productName" ormtype="string" length="200";
	property name="unitPrice" ormtype="big_decimal";
	property name="categoryId" ormtype="integer";
	property name="active" ormtype="short";
	property name="discontinued" ormtype="short";
	property name="status" ormtype="string" length="30";

}
