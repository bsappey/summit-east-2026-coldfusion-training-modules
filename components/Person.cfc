/**
 * Training demo CFC (module 7 samples).
 * Verified: Adobe ColdFusion components / init / accessors pattern.
 */
component {
	property name="firstName" type="string";
	property name="lastName" type="string";

	public Person function init(required string firstName, required string lastName) {
		variables.firstName = arguments.firstName;
		variables.lastName = arguments.lastName;
		return this;
	}

	public string function getFullName() {
		return variables.firstName & " " & variables.lastName;
	}
}
