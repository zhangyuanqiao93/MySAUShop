package cn.edu.sau.javashop.core.plugin.order;

import cn.edu.sau.javashop.core.model.Order;

/**
 * 订单支付事件

 */
public interface IOrderPayEvent {
	
	public void pay(Order order, boolean isOnline);
	
	
}
