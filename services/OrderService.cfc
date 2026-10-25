/**
 * Order service for wiring / constructor injection demos (module 7).
 * Verified: Adobe ColdFusion components.
 */
component {
	public OrderService function init(required gateways.OrderGateway orderGateway, required services.UserService userService) {
		variables.orderGateway = arguments.orderGateway;
		variables.userService = arguments.userService;
		return this;
	}

	public query function getOrder(required numeric orderId) {
		return variables.orderGateway.getById(arguments.orderId);
	}

	public string function description() {
		return "OrderService wired";
	}
}
