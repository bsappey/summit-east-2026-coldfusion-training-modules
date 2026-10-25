/**
 * Maps USERS table (component name avoids Hibernate / SQL reserved word "User").
 * Verified: Adobe ColdFusion ORM - persistent component (User Guide).
 */
component displayName="TrainingUser" table="users" persistent="true" accessors="true" {

	property
		name="userId"
		fieldtype="id"
		generator="native"
		ormtype="integer";

	property name="userName" ormtype="string" length="120";
	property name="email" ormtype="string" length="255";
	property name="active" ormtype="integer";
	property name="status" ormtype="string" length="30";
	property name="createdDate" ormtype="timestamp";

}
