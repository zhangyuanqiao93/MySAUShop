package cn.edu.sau.javashop.core.service.impl.promotion;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.CurrencyUtil;
import cn.edu.sau.javashop.core.model.Promotion;
import cn.edu.sau.javashop.core.service.promotion.IDiscountBehavior;
import cn.edu.sau.javashop.core.service.promotion.IPromotionMethod;

/**
 * 对指定的商品直接打拆

 */
public class DiscountMethod implements IPromotionMethod,IDiscountBehavior {

	
	public String getInputHtml(Integer pmtid, String solution) {
		FreeMarkerPaser freeMarkerPaser = FreeMarkerPaser.getInstance();
		freeMarkerPaser.setClz(this.getClass());
		freeMarkerPaser.putData("discount",  solution );
		return freeMarkerPaser.proessPageContent();
	}

	
	public String getName() {
		return "discount";
	}

	
	public String onPromotionSave(Integer pmtid) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String discount = request.getParameter("discount");
		return discount==null?"":discount;
	}

	
	public Double discount(Promotion promotion, Double  goodsPrice) {
		String solution = promotion.getPmt_solution();
		Double  discount =  Double.valueOf(solution);
		return CurrencyUtil.mul(goodsPrice, discount);
	}


}
