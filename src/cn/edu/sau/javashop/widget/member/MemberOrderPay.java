package cn.edu.sau.javashop.widget.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.javashop.core.model.Order;
import cn.edu.sau.javashop.core.model.PayCfg;
import cn.edu.sau.javashop.core.service.IOrderManager;
import cn.edu.sau.javashop.core.service.IPaymentManager;
import cn.edu.sau.javashop.widget.cart.checkout.CheckOutWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**
 * 会员订单支付
 */
public class MemberOrderPay extends AbstractMemberWidget {
	 
	private IOrderManager orderManager;
	private  HttpServletRequest  request;
	private IPaymentManager paymentManager;
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		request  = ThreadContextHolder.getHttpRequest();
		Integer  orderId = this.getIntParam("orderId") ; 
		Order order  = orderManager.get(orderId);
		
		PayCfg payCfg = this.paymentManager.get(order.getPayment_id());
		this.putData("paypluginid", payCfg.getType());
		
		
		this.putData("order", order);
		this.freeMarkerPaser.setClz(CheckOutWidget.class);
		this.setPageName("orderPay");

	}
	
	
	

	
	public boolean getShowMenu() {
	 
		if(this.getCurrentMember() == null){
			return false;
		}else{
			return true;
		}
	}


	private Integer getIntParam(String name){
		try{
		 return Integer.valueOf( request.getParameter(name) );
		}catch(RuntimeException e){
			e.printStackTrace();
			return null;
		}
	}

	
	public IOrderManager getOrderManager() {
		return orderManager;
	}

	public void setOrderManager(IOrderManager orderManager) {
		this.orderManager = orderManager;
	}


	public IPaymentManager getPaymentManager() {
		return paymentManager;
	}


	public void setPaymentManager(IPaymentManager paymentManager) {
		this.paymentManager = paymentManager;
	}
	

}
