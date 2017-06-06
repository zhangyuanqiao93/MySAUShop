package cn.edu.sau.javashop.core.plugin.order;

import cn.edu.sau.javashop.core.model.Allocation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 订单配货事件

 *
 */
public interface IOrderAllocationEvent {
	
	/**
	 * 激发订单配货事件
	 * 注意：非<b>订单项发货事件(IOrderAllocationItemEvent)</b>
	 * @param allocation 传递配货单
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void onAllocation(Allocation allocation);
	
	
}
