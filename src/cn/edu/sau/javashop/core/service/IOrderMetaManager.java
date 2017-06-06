package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.javashop.core.model.OrderMeta;



/**
 * 订单扩展信息管理 

 *
 */
public interface IOrderMetaManager {
	
	/**
	 * 添加一个订单扩展
	 * @param orderMeta
	 */
	public void add(OrderMeta orderMeta);
	
	
	/**
	 * 读取一个订单的扩展列表
	 * @param orderid
	 * @return
	 */
	public List<OrderMeta> list(int orderid);
}	
