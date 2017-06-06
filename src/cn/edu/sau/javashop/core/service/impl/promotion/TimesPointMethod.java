package cn.edu.sau.javashop.core.service.impl.promotion;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.model.Promotion;
import cn.edu.sau.javashop.core.service.promotion.IPromotionMethod;
import cn.edu.sau.javashop.core.service.promotion.ITimesPointBehavior;

/**
 * 翻倍积分优惠方式实现

 */
public class TimesPointMethod implements IPromotionMethod, ITimesPointBehavior {

	
	public String getInputHtml(Integer pmtid, String solution) {
		FreeMarkerPaser freeMarkerPaser = FreeMarkerPaser.getInstance();
		freeMarkerPaser.setClz(this.getClass());
		freeMarkerPaser.putData("multiple",  solution );
		return freeMarkerPaser.proessPageContent();
	}

	
	public String getName() {
		 
		return "timesPoint";
	}

	
	public String onPromotionSave(Integer pmtid) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String multiple = request.getParameter("multiple");
		return multiple==null?"":multiple;
	}

	
	public Integer countPoint(Promotion promotion, Integer point) {
		String solution = promotion.getPmt_solution();
		Integer multiple = Integer.valueOf(solution);
		
		return point*multiple;
	}

}
