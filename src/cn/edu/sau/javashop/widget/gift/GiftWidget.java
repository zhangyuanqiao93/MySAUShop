package cn.edu.sau.javashop.widget.gift;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.FreeOffer;
import cn.edu.sau.javashop.core.model.FreeOfferCategory;
import cn.edu.sau.javashop.core.service.IFreeOfferCategoryManager;
import cn.edu.sau.javashop.core.service.IFreeOfferManager;
import cn.edu.sau.app.base.widget.header.HeaderConstants;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.IMemberLvManager;

/**
 * 赠品列表挂件
 * @author zyq
 *2010-5-4下午04:54:30
 */
public class GiftWidget extends AbstractWidget {

	private IFreeOfferManager freeOfferManager;
	private IFreeOfferCategoryManager freeOfferCategoryManager;
	private IMemberLvManager memberLvManager;
	
	private HttpServletRequest request;
	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		request =ThreadContextHolder.getHttpRequest();
		String showtype= params.get("showtype");
		if("list".equals(showtype)){
			this.list();
		}
		
		if("detail".equals(showtype)){
			this.detail();
		}
	}

	
	private void detail(){
		String giftid  = this.paseGiftId( request.getServletPath());
		FreeOffer gift  =freeOfferManager.get( Integer.valueOf(giftid));
		FreeOfferCategory cat =this.freeOfferCategoryManager.get(gift.getFo_category_id());
		gift.setCat_name(cat.getCat_name());
		List lvList  = this.memberLvManager.list(gift.getLv_ids());
		this.putData("lvList", lvList) ;
		this.putData("gift", gift);
		this.setPageName("GiftDetail");
		this.putData(HeaderConstants.title,gift.getFo_name());
	}
	
	
	private void list(){
		Page page  =freeOfferManager.list(1, 20);
		this.putData("webpage", page);
		this.setPageName("GiftList");
	}
	
	
	private    String  paseGiftId(String url){
		String pattern = "/gift-(\\d+).html";
		String value = null;
		Pattern p = Pattern.compile(pattern, 2 | Pattern.DOTALL);
		Matcher m = p.matcher(url);
		if (m.find()) {
			value = m.replaceAll("$1");
		}
		return value;
	}
	
	public IFreeOfferManager getFreeOfferManager() {
		return freeOfferManager;
	}

	public void setFreeOfferManager(IFreeOfferManager freeOfferManager) {
		this.freeOfferManager = freeOfferManager;
	}

	public IFreeOfferCategoryManager getFreeOfferCategoryManager() {
		return freeOfferCategoryManager;
	}

	public void setFreeOfferCategoryManager(
			IFreeOfferCategoryManager freeOfferCategoryManager) {
		this.freeOfferCategoryManager = freeOfferCategoryManager;
	}

	public IMemberLvManager getMemberLvManager() {
		return memberLvManager;
	}

	public void setMemberLvManager(IMemberLvManager memberLvManager) {
		this.memberLvManager = memberLvManager;
	}

}
