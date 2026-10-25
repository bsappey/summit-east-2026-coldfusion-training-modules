/**
 * accessors="true" demo (module 7).
 * Verified: Adobe ColdFusion property accessors.
 */
component accessors="true" {
	property name="firstName" type="string";
	property name="lastName" type="string";
	property name="createdAt" type="date" getter="true" setter="false";

	public UserModel function init() {
		setFirstName("");
		setLastName("");
		variables.createdAt = now();
		return this;
	}
}
