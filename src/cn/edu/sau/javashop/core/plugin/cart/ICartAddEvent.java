package cn.edu.sau.javashop.core.plugin.cart;

import cn.edu.sau.javashop.core.model.Cart;

/**
 * 购物车添加事件
 * @author zyq
 *
 */
public interface ICartAddEvent {
	public void add(Cart cart);
}
