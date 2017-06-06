package cn.edu.sau.javashop.widget.goods.detail;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.model.Promotion;
import cn.edu.sau.javashop.core.service.IPromotionManager;
import cn.edu.sau.javashop.widget.goods.AbstractGoodsDetailWidget;
import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/***
 * 商品优惠规则挂件
 */
public class GoodsPromotionWidget extends AbstractGoodsDetailWidget {
	private IPromotionManager promotionManager;
	
	protected void execute(Map<String, String> params, Map goods) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		if(member==null){
			this.showHtml =false;return ;
		}
		
		//读取此会员级别可享有的这个商品的促销规则
		Integer goodsid =(Integer)goods.get("goods_id");
		List<Promotion> pmtList  =   this.promotionManager.list(goodsid, member.getLv_id());
		if((pmtList==null)||(pmtList.size()==0)){
			this.showHtml =false;return ;
		}
		this.putData("pmtList", pmtList);
		
	}

	
	protected void config(Map<String, String> params) {
		
	}

	public IPromotionManager getPromotionManager() {
		return promotionManager;
	}

	public void setPromotionManager(IPromotionManager promotionManager) {
		this.promotionManager = promotionManager;
	}

}
