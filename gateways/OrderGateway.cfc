/**
 * Gateway demo for wiring / constructor injection (module 7).
 * Verified: Adobe ColdFusion; queryExecute().
 */
component {
	public OrderGateway function init(required string datasource) {
		variables.datasource = arguments.datasource;
		return this;
	}

	public query function getById(required numeric orderId) {
		return queryExecute(
			"SELECT orderId, customerId, orderDate, status FROM orders WHERE orderId = ?",
			[ arguments.orderId ],
			{ datasource: variables.datasource }
		);
	}
}
