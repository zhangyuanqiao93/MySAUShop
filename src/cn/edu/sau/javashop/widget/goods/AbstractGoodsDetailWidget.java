package cn.edu.sau.javashop.widget.goods;

import java.util.Map;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**
 * 抽象的商品详细挂件
 * @author zyq
 *
 */
public abstract class AbstractGoodsDetailWidget extends AbstractWidget {

 

	
	protected void display(Map<String, String> params) {
		Map goods  = (Map)ThreadContextHolder.getHttpRequest().getAttribute("goods");
		if(goods==null) throw new RuntimeException("参数显示挂件必须和商品详细显示挂件同时存在");
		this.execute(params, goods);
	}
	
	abstract protected void execute(Map<String, String> params,Map goods);

}
