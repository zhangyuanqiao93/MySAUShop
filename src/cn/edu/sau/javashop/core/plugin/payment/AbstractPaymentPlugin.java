package cn.edu.sau.javashop.core.plugin.payment;

import java.text.NumberFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.javashop.core.model.Order;
import cn.edu.sau.javashop.core.model.PaymentLog;
import cn.edu.sau.javashop.core.service.IMemberManager;
import cn.edu.sau.javashop.core.service.IOrderFlowManager;
import cn.edu.sau.javashop.core.service.IOrderManager;
import cn.edu.sau.javashop.core.service.IPaymentManager;
import org.apache.log4j.Logger;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.model.PayCfg;
import cn.edu.sau.javashop.core.service.IAdvanceLogsManager;

/**
 * 支付插件基类<br/>

 */
public abstract class AbstractPaymentPlugin extends AutoRegisterPlugin {
	protected IPaymentManager paymentManager;
	private IOrderFlowManager orderFlowManager;
	private IOrderManager orderManager;
	private IMemberManager memberManager;
	private IAdvanceLogsManager advanceLogsManager;
	protected final Logger logger = Logger.getLogger(getClass());
	
	private String callbackUrl;
	private String showUrl;
	
	/**
	 * 供支付插件获取回调url
	 * @return
	 */
	protected String getCallBackUrl(PayCfg payCfg){
		if(callbackUrl!=null)
			return callbackUrl;
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String serverName =request.getServerName();
		int port = request.getLocalPort();
		String contextPath = request.getContextPath();
		return "http://"+serverName+":"+port+contextPath+"/payok_callback_"+payCfg.getType() +".html";
	}
	
	protected String getReturnUrl(PayCfg  payCfg){
		if(callbackUrl!=null ) return callbackUrl;
		HttpServletRequest request  =  ThreadContextHolder.getHttpRequest();
		String serverName =request.getServerName();
		int port  = request.getLocalPort();
		String contextPath = request.getContextPath();
		return "http://"+serverName+":"+port+contextPath+"/pay_return_"+payCfg.getType() +".html";
	}
	
	/**
	 * 返回价格字符串
	 * @param price
	 * @return
	 */
	protected String formatPrice(Double price){
		NumberFormat nFormat=NumberFormat.getNumberInstance();
        nFormat.setMaximumFractionDigits(0); 
        nFormat.setGroupingUsed(false);
        return nFormat.format(price);
	}
	
	/**
	 * 供支付插件获取显示url
	 * @return
	 */
	protected String getShowUrl(Order order){
		if(showUrl!=null) return showUrl;

		HttpServletRequest request  =  ThreadContextHolder.getHttpRequest();
		String serverName =request.getServerName();	
		int port  = request.getLocalPort();
		String contextPath = request.getContextPath();		
		return "http://"+serverName+":"+port+contextPath+"/orderdetail_"+order.getSn()+".html"; 
	}
	
	/**
	 * 设置callbackurl，提供插件调用者改变callbackurl的机会
	 * @param url
	 */
	public void setCallBackUrl(String url){
		this.callbackUrl = url;
	}
	
	/**
	 * 设置show url ，提供插件调用者改变show url的机会 
	 * @param url
	 */
	public void setShowUrl(String url){
		this.showUrl = url;
	}
	
	/**
	 * 获取支付插件设置参数
	 * @return key为参数名称，value为参数值
	 */
	protected Map<String,String> getConfigParams(){
		return this.paymentManager.getConfigParams(this.getId());
	}
	
	/**
	 * 支付成功后调用此方法来改变订单的状态
	 * @param orderId
	 */
/*	protected void paySuccess(String ordersn,Double price){
		if(StringUtil.isEmpty(ordersn)){ //order为-1是预存款充值
			if(price==null) return ;
			Member member  = UserServiceFactory.getUserService().getCurrentMember();
			if(member==null) return ;
			this.memberManager.addMoney(member.getMember_id(), price);
//			member.setAdvance(member.getAdvance()+price);
			member.setAdvance(CurrencyUtil.add(member.getAdvance(),price));
			AdvanceLogs advanceLogs = new AdvanceLogs();
			advanceLogs.setMember_id(member.getMember_id());
			advanceLogs.setDisabled("false");
			advanceLogs.setMtime(System.currentTimeMillis());
			advanceLogs.setImport_money(price);
			advanceLogs.setMember_advance(price);
			advanceLogs.setShop_advance(price);
			advanceLogs.setMoney(price);
			advanceLogs.setMessage("");
			advanceLogs.setMemo("在线充值");
			advanceLogsManager.add(advanceLogs);
			return ;
		}
		Order order  = orderManager.get(ordersn);
		PaymentLog paymentLog =  new PaymentLog();
		Member member  = UserServiceFactory.getUserService().getCurrentMember();
		if(member!=null){
			paymentLog.setMember_name(member.getUname());
			paymentLog.setMember_id(member.getMember_id());
		}
		
		paymentLog.setPay_type(order.getPayment_type());
		paymentLog.setMoney(order.getOrder_amount());		
		paymentLog.setOrder_id(order.getOrder_id());
		paymentLog.setPay_method(order.getPayment_name());
		this.orderFlowManager.pay(paymentLog,true);
	}*/
	
	protected void paySuccess(String ordersn ){	 
		Order order  = orderManager.get(ordersn);
		PaymentLog paymentLog =  new PaymentLog();
		Member member  = UserServiceFactory.getUserService().getCurrentMember();
		if(member!=null){
			paymentLog.setMember_name(member.getUname());
			paymentLog.setMember_id(member.getMember_id());
		}
		
		paymentLog.setPay_type(order.getPayment_type());
		paymentLog.setMoney(order.getOrder_amount());		
		paymentLog.setOrder_id(order.getOrder_id());
		paymentLog.setPay_method(order.getPayment_name());
		this.orderFlowManager.pay(paymentLog,true);
	}
	
	public IPaymentManager getPaymentManager() {
		return paymentManager;
	}
	
	public void setPaymentManager(IPaymentManager paymentManager) {
		this.paymentManager = paymentManager;
	}

	public IOrderFlowManager getOrderFlowManager() {
		return orderFlowManager;
	}

	public void setOrderFlowManager(IOrderFlowManager orderFlowManager) {
		this.orderFlowManager = orderFlowManager;
	}

	public IOrderManager getOrderManager() {
		return orderManager;
	}

	public void setOrderManager(IOrderManager orderManager) {
		this.orderManager = orderManager;
	}


	public IMemberManager getMemberManager() {
		return memberManager;
	}

	public void setMemberManager(IMemberManager memberManager) {
		this.memberManager = memberManager;
	}

	public IAdvanceLogsManager getAdvanceLogsManager() {
		return advanceLogsManager;
	}

	public void setAdvanceLogsManager(IAdvanceLogsManager advanceLogsManager) {
		this.advanceLogsManager = advanceLogsManager;
	}
	
}
