/**
 * Stub collaborator for OrderService demos (module 7).
 * Verified: Adobe ColdFusion components.
 */
component {
	public UserService function init(required string datasource) {
		variables.datasource = arguments.datasource;
		return this;
	}
}
