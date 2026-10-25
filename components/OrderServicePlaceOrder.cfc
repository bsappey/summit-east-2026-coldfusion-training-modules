/**
 * Composition demo (module 7) - depends on Logger.
 * Verified: Adobe ColdFusion components / constructor injection.
 */
component {
	public OrderServicePlaceOrder function init(required components.Logger logger) {
		variables.logger = arguments.logger;
		return this;
	}

	public struct function placeOrder(required struct order) {
		variables.logger.info("Placing order");
		return { "orderId": 1 };
	}
}
