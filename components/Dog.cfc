/**
 * Derived type for inheritance demo (module 7).
 * Verified: Adobe ColdFusion component extends.
 */
component extends="components.Animal" {
	public string function speak() {
		return "Woof";
	}
}
