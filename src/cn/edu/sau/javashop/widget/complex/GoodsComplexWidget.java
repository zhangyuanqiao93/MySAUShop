package cn.edu.sau.javashop.widget.complex;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.util.RequestUtil;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.GoodsPicDirectiveModel;
import cn.edu.sau.javashop.core.service.IGoodsComplexManager;

/**
 * 相关商品挂件

 */
public class GoodsComplexWidget extends AbstractWidget {
	
	private IGoodsComplexManager goodsComplexManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		Integer goods_id  = this.getGoodsId();
		List complexList = goodsComplexManager.listAllComplex(goods_id);
		boolean hasComplex = complexList==null ||complexList.isEmpty() ?false:true;
		this.putData("hasComplex", hasComplex);
		this.putData("complexList", complexList);
		this.putData("GoodsPic", new GoodsPicDirectiveModel());
		this.setPageName("complex");
	}
	
	private Integer getGoodsId(){
		HttpServletRequest httpRequest = ThreadContextHolder.getHttpRequest();
		String url = RequestUtil.getRequestUrl(httpRequest);
		
		if(url.startsWith("/widget")) return 0;
		
		String goods_id = this.paseGoodsId(url);
		
		return Integer.valueOf(goods_id);
	}

	private  static  String  paseGoodsId(String url){
		String pattern = "/(.*)-(\\d+).html(.*)";
		String value = null;
		Pattern p = Pattern.compile(pattern, 2 | Pattern.DOTALL);
		Matcher m = p.matcher(url);
		if (m.find()) {
			value = m.replaceAll("$2");
		}
		return value;
	}

	public IGoodsComplexManager getGoodsComplexManager() {
		return goodsComplexManager;
	}

	public void setGoodsComplexManager(IGoodsComplexManager goodsComplexManager) {
		this.goodsComplexManager = goodsComplexManager;
	}

}
