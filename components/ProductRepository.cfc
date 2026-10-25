/**
 * Sample implementation of interfaces.IRepository (module 7).
 * Verified: Adobe ColdFusion implements interface.
 */
component implements="interfaces.IRepository" {
	public any function getById(required numeric id) {
		return queryExecute(
			"SELECT productId, productName FROM products WHERE productId = ?",
			[ arguments.id ],
			{ datasource: "CFTrainingDSN" }
		);
	}

	public void function save(required any entity) {
		// Demo: no DB write in this sample
	}
}
