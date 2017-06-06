package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.Delivery;
import cn.edu.sau.javashop.core.model.Order;

/**
 * 用户中心-我的订单

 */
public interface IMemberOrderManager {
	
	/**
	 * 订单列表
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page pageOrders(int pageNo, int pageSize);
	
	public Order getOrder(int order_id);
	
	public Delivery getOrderDelivery(int order_id);
	
	public List listOrderLog(int order_id);
	
	/**
	 * 读取订单货物（商品）
	 * @param order_id
	 * @return
	 */
	public List listGoodsItems(int order_id);
	
	
	/**
	 * 读取订单赠品列表
	 * @param orderid
	 * @return
	 */
	public List listGiftItems(int orderid);
	
	/***
	 * 判断当前会员是否购买过此商品
	 * @param goodsid
	 * @return 如果当前用户未登陆，返回假
	 */
	public boolean isBuy(int goodsid);
	
}
