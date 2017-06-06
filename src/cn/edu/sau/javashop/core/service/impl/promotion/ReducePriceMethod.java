package cn.edu.sau.javashop.core.service.impl.promotion;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.javashop.core.service.promotion.IPromotionMethod;
import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.CurrencyUtil;
import cn.edu.sau.javashop.core.model.Promotion;
import cn.edu.sau.javashop.core.service.promotion.IReducePriceBehavior;

/**
 * 减价优惠方式

 */
public class ReducePriceMethod implements IPromotionMethod,
		IReducePriceBehavior {

	
	public String getInputHtml(Integer pmtid, String solution) {
		FreeMarkerPaser freeMarkerPaser = FreeMarkerPaser.getInstance();
		freeMarkerPaser.setClz(this.getClass());
		freeMarkerPaser.putData("lessMoney", solution);
		return freeMarkerPaser.proessPageContent();
	}

	
	public String getName() {
		return "reducePrice";
	}

	
	public String onPromotionSave(Integer pmtid) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String reducePrice = request.getParameter("lessMoney");
		return reducePrice==null?"":reducePrice;
	}

	
	public Double reducedPrice(Promotion pmt,Double price) {
		String solution = pmt.getPmt_solution();
		Double  lessMoney =  Double.valueOf(solution);
		return CurrencyUtil.sub(price, lessMoney);
	}

}
