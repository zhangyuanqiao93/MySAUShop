package cn.edu.sau.javashop.widget.member;

import java.util.Map;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.IMemberOrderManager;

/**
 * 会员是否购买过某商品的挂件
 * 必须和商品主挂件一起使用
 *
 */
public class MemberGoodsIsBuyWidget extends AbstractWidget {

	private IMemberOrderManager memberOrderManager;
	protected void config(Map<String, String> params) {

	}

	protected void display(Map<String, String> params) {
		Map goods  = (Map)ThreadContextHolder.getHttpRequest().getAttribute("goods");
		if(goods==null) throw new RuntimeException("员是否购买过某商品挂件必须和商品详细显示挂件同时存在");
		boolean isBuy = this.memberOrderManager.isBuy((Integer)goods.get("goods_id"));
		this.putData("isBuy", isBuy);
	}

	public IMemberOrderManager getMemberOrderManager() {
		return memberOrderManager;
	}

	public void setMemberOrderManager(IMemberOrderManager memberOrderManager) {
		this.memberOrderManager = memberOrderManager;
	}
	
	

}
