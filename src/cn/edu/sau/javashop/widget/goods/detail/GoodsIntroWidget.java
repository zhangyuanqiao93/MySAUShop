package cn.edu.sau.javashop.widget.goods.detail;

import java.util.Map;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**
 * 商品详细信息挂件
 */
public class GoodsIntroWidget extends AbstractWidget {
 
	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		
		Map goods  = (Map)ThreadContextHolder.getHttpRequest().getAttribute("goods");
		
		if(goods==null) throw new RuntimeException("参数显示挂件必须和商品详细显示挂件同时存在");
		String intro =(String)goods.get("intro");
		intro =intro==null?"":intro;
		this.putData("intro", intro);
		this.setPageName("intro");
	}

 
	

}
