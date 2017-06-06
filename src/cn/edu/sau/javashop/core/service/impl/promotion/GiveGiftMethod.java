package cn.edu.sau.javashop.core.service.impl.promotion;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.javashop.core.service.promotion.IPromotionMethod;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.sf.json.JSONArray;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.FreeOffer;
import cn.edu.sau.javashop.core.model.Promotion;
import cn.edu.sau.javashop.core.service.IFreeOfferManager;
import cn.edu.sau.javashop.core.service.promotion.IGiveGiftBehavior;

/**
 * 优惠方式--送赠品
 */
public class GiveGiftMethod extends BaseSupport<FreeOffer> implements IPromotionMethod, IGiveGiftBehavior {
	
	private IFreeOfferManager freeOfferManager;
	
	public String getInputHtml(Integer pmtid, String solution) {
		FreeMarkerPaser freeMarkerPaser = FreeMarkerPaser.getInstance();
		freeMarkerPaser.setClz(this.getClass());
		if(solution!=null){
			Object[] giftIdArray=   JSONArray.fromObject(solution).toArray();
			if(giftIdArray!=null){
				Integer[] giftIds = new Integer[giftIdArray.length];
				int i=0;
				for(Object giftId: giftIdArray){
					giftIds[i] =  Integer.valueOf(giftId.toString());
					i++;
				}
				List giftList  = freeOfferManager.list(giftIds);
				freeMarkerPaser.putData("giftList", giftList);
			}
				
		}

		return freeMarkerPaser.proessPageContent();
	}

	
	public String getName() {
		
		return "giveGift";
	}

	
	public String onPromotionSave(Integer pmtid) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String[] giveGift = request.getParameterValues("giftidArray");
		if(giveGift==null) throw new  IllegalArgumentException("失败，请添加赠品！");
		return JSONArray.fromObject(giveGift).toString();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	
	public void giveGift(Promotion promotion,Integer orderId) {
		List<Map> giftList  = this.getGiftList(promotion);
		
		for(Map gift:giftList){
			this.baseDaoSupport.execute("insert into order_gift(order_id,gift_id,gift_name,point,num,shipnum,getmethod)values(?,?,?,?,?,?,?)", 
								orderId,gift.get("fo_id"),gift.get("fo_name"),gift.get("score"),1,0,"present");
		}
	 
	}

	
	public List getGiftList(Promotion promotion) {
		String solution =  promotion.getPmt_solution();
		if(solution== null || "".equals(solution)) return null;
		
		JSONArray jsonArray = JSONArray.fromObject( solution);  
	 	Object[] giftIdArray = jsonArray.toArray();
	 	
	 	String sql ="select * from freeoffer where fo_id in("+ StringUtil.arrayToString(giftIdArray, ",") +") ";
		return this.baseDaoSupport.queryForList(sql);
	}

	public IFreeOfferManager getFreeOfferManager() {
		return freeOfferManager;
	}

	public void setFreeOfferManager(IFreeOfferManager freeOfferManager) {
		this.freeOfferManager = freeOfferManager;
	}
	
	
}
