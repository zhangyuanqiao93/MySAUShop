package cn.edu.sau.javashop.core.plugin.order;

import cn.edu.sau.javashop.core.model.Order;


/**
 * 订单创建事件
 * @author zyq
 *
 */
public interface IOrderCreateEvent {
	
	
	public void onOrderCreate(Order order, String sessionid);
	
	
}
