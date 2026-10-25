/**
 * Application-scoped service demo (module 12).
 * Verified: Adobe ColdFusion components; queryExecute().
 */
component {
	public ContactService function init(required string datasource) {
		variables.datasource = arguments.datasource;
		return this;
	}

	public query function list() {
		return queryExecute(
			"SELECT id, name, email FROM contacts ORDER BY created DESC",
			{},
			{ datasource: variables.datasource }
		);
	}
}
