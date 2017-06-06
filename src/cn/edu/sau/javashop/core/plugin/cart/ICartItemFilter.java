package cn.edu.sau.javashop.core.plugin.cart;

import java.util.List;

import cn.edu.sau.javashop.core.model.support.CartItem;

/**
 * 购物车项过滤器

 */
public interface ICartItemFilter {
	
	public void filter(List<CartItem> itemlist, String sessionid);
}
