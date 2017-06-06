package cn.edu.sau.javashop.core.plugin.order;

import cn.edu.sau.javashop.core.model.Order;

public interface IOrderCanelEvent {
	public void canel(Order order);
}
