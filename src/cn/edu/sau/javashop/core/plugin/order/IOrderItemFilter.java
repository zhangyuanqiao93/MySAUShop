package cn.edu.sau.javashop.core.plugin.order;

import java.util.List;
import java.util.Map;
/**
 * 订单项过滤器

 *
 */
public interface IOrderItemFilter {
	public void filter(Integer orderid, List<Map> itemList);
}
