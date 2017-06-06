package cn.edu.sau.javashop.core.plugin.cart;

import cn.edu.sau.javashop.core.model.support.OrderPrice;

/**
 * 计算价格事件
 * @author zyq
 *
 */
public interface ICountPriceEvent {
	
	
	public OrderPrice countPrice(OrderPrice orderprice);
	
}
