package cn.edu.sau.javashop.plugin.promotion;

import cn.edu.sau.javashop.core.service.promotion.PromotionType;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.plugin.promotion.IPromotionPlugin;
import cn.edu.sau.javashop.core.service.promotion.PromotionConditions;

public class EnoughPriceReducePrice extends AutoRegisterPlugin implements
		IPromotionPlugin {

	
	public void register() {

	}

	
	public String[] getConditions() {
		 
		return new String[]{ PromotionConditions.ORDER ,PromotionConditions.MEMBERLV};
	}

	
	public String getMethods() {
		 
		return "reducePrice";
	}

	
	public String getAuthor() {
		return "kingapex";
	}

	
	public String getId() {
		return "enoughPriceReducePrice";
	}

	
	public String getName() {
		return "满就减———购物车中商品总金额大于指定金额,就可立减某金额";
	}

	
	public String getType() {
		return PromotionType.PMTTYPE_ORDER;
	}

	
	public String getVersion() {
		return "1.0";
	}

	
	public void perform(Object... params) {

	}

}
