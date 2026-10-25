/**
 * Training component (modules 7–8 demos).
 * Verified: Adobe CFML Reference - cfproperty has no documented access= attribute;
 * use variables scope for private instance data; access= applies to cffunction/function.
 */
component accessors="true" {
	property name="name" type="string";

	public ConfigItem function init() {
		variables._internalCache = {};
		variables._token = createUUID();
		setName("demo");
		return this;
	}

	/** Example of public API over private variables scope state */
	public string function getTokenPrefix() {
		return left(variables._token, 8);
	}
}
