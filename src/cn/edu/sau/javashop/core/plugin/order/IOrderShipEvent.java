package cn.edu.sau.javashop.core.plugin.order;

import java.util.List;

import cn.edu.sau.javashop.core.model.Delivery;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.javashop.core.model.AllocationItem;
import cn.edu.sau.javashop.core.model.DeliveryItem;

/**
 * 订单发退货事件
 * @author zyq
 *
 */
public interface IOrderShipEvent {
	
	/**
	 * 订单某个货物项发货事件
	 * @param deliveryItem
	 * @param allocationItem
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void itemShip(DeliveryItem deliveryItem, AllocationItem allocationItem);
	
	
	/**
	 * 订单发货事件
	 * @param delivery
	 * @param itemList
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void ship(Delivery delivery, List<DeliveryItem> itemList);
	
	
	/**
	 * 订单退货事件
	 * @param delivery
	 * @param itemList
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void returned(Delivery delivery, List<DeliveryItem> itemList);
	
	
	/**
	 * 定义事件是否被执行 
	 * @param catid 商品分类id
	 * @return
	 */
	public boolean canBeExecute(int catid);
}
