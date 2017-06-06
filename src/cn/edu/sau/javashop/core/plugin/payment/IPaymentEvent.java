package cn.edu.sau.javashop.core.plugin.payment;

import cn.edu.sau.javashop.core.model.Order;
import cn.edu.sau.javashop.core.model.PayCfg;

/**
 * 在线支付事件

 *
 */
public interface IPaymentEvent {
	
	/**
	 * 生成跳转至第三方支付平台的html和脚本
	 * @param payCfg
	 * @param order
	 * @return 跳转到第三方支付平台的html和脚本
	 */
	public String onPay(PayCfg payCfg, Order order);
	
	/**
	 * 支付成功后异步通知事件的
	 * @return 返回第三方支付需要的信息
	 */
	public String onCallBack();
	
	
	/**
	 * 支付成功后返回本站后激发此事件 
	 * @return  要求返回订单sn
	 */
	public String onReturn();
	
	
}	
