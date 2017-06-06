package cn.edu.sau.javashop.core.service.promotion;

import cn.edu.sau.javashop.core.model.Promotion;

/**
 * 商品直接打折

 */
public interface IDiscountBehavior extends IPromotionBehavior {
	
	
	
	/**
	 * 计算一个商品打折后的价格
	 * @param promotion
	 * @param goodsPrice 商品价格
	 * @return 优惠后的商品价格
	 */
	public Double discount(Promotion promotion, Double goodsPrice);

	
}
