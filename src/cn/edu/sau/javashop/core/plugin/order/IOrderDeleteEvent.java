package cn.edu.sau.javashop.core.plugin.order;

/**
 * 订单删除事件

 */
public interface IOrderDeleteEvent {
	public void delete(Integer[] orderId);
}
