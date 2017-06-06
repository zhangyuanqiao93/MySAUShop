package cn.edu.sau.javashop.core.service.impl.promotion;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.javashop.core.service.promotion.IPromotionMethod;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.promotion.IReduceFreightBehavior;

/**
 * 免运费方法 

 */
public class FreeFreightMethod  implements IPromotionMethod,IReduceFreightBehavior {

	
	public String getInputHtml(Integer pmtid, String solution) {
		FreeMarkerPaser freeMarkerPaser = FreeMarkerPaser.getInstance();
		freeMarkerPaser.setClz(this.getClass());
		freeMarkerPaser.putData("free",  solution );
		return freeMarkerPaser.proessPageContent();
	}

	
	public String getName() {
		
		return "free";
	}

	
	public String onPromotionSave(Integer pmtid) {
		
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String free = request.getParameter("free");
		return free==null?"":free;
	}


	
	public Double reducedPrice( Double freight) {
		return 0D;
	}

	
 

}
