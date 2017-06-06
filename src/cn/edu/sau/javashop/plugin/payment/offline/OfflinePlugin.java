package cn.edu.sau.javashop.plugin.payment.offline;

import cn.edu.sau.javashop.core.model.Order;
import cn.edu.sau.javashop.core.model.PayCfg;
import cn.edu.sau.javashop.core.plugin.payment.AbstractPaymentPlugin;
import cn.edu.sau.javashop.core.plugin.payment.IPaymentEvent;

/**
 * 线下支付插件

 */
public class OfflinePlugin extends AbstractPaymentPlugin implements
        IPaymentEvent {


	
	public String onCallBack() {
		return "";
	}

	
	public String onPay(PayCfg payCfg, Order order) {
		
		return "";
	}

	
	public String getAuthor() {
		return "kingapex";
	}

	
	public String getId() {
		return "offline";
	}

	
	public String getName() {
		return "线下支付";
	}

	
	public String getType() {
		return "payment";
	}

	
	public String getVersion() {
		return "1.0";
	}

	
	public void perform(Object... params) {

	}

	
	public void register() {

	}


	@Override
	public String onReturn() {
		// TODO Auto-generated method stub
		return "";
	}
}
