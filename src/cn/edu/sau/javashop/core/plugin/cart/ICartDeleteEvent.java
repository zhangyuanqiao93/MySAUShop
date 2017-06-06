package cn.edu.sau.javashop.core.plugin.cart;

/**
 * 购物车删除事件
 * @author zyq
 *
 */
public interface ICartDeleteEvent {
	/**
	 * 购物车删除事件定义
	 * @param sessionid
	 * @param cartid
	 */
	public void delete(String sessionid, Integer cartid);
}
