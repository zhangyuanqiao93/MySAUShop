package cn.edu.sau.javashop.plugin.promotion;

import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.service.promotion.PromotionType;
import cn.edu.sau.javashop.core.plugin.promotion.IPromotionPlugin;
import cn.edu.sau.javashop.core.service.promotion.PromotionConditions;

/**
 * 购物车中商品总金额大于指定金额，赠送某些赠品插件

 */
public class EnoughPriceGiveGiftPlugin extends AutoRegisterPlugin implements IPromotionPlugin {

	
	public String[] getConditions() {
		
		return new String[]{ PromotionConditions.ORDER ,PromotionConditions.MEMBERLV};
	}

	
	public String getMethods() {
		return "giveGift";
	}	
	
	
	public String getAuthor() {
		return "kingapex";
	}

	
	public String getId() {
		return "enoughPriceGiveGiftPlugin";
	}

	
	public String getName() {
		return "满就送———购物车中商品总金额大于指定金额，赠送某个赠品";
	}

	
	public String getType() {
		return PromotionType.PMTTYPE_ORDER ;
	}

	
	public String getVersion() {
		return "1.0";
	}

	
	public void perform(Object... params) {

	}

	
	public void register() {
		
	}

}
