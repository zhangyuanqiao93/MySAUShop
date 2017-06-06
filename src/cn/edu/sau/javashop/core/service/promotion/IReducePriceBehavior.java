package cn.edu.sau.javashop.core.service.promotion;

import cn.edu.sau.javashop.core.model.Promotion;


/**
 * 优惠减价行为接口
 */
public interface IReducePriceBehavior  extends IPromotionBehavior{
	
	
	/**
	 * 减价方法
	 * @param orderPrice  原始金额
	 * @return 减价后的 金额
	 */
	public Double reducedPrice(Promotion pmt, Double price);
	
	
}
