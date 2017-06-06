package cn.edu.sau.javashop.core.service.promotion;

import cn.edu.sau.javashop.core.model.Promotion;


/**
 * 翻倍积分优惠方式

 */
public interface ITimesPointBehavior extends IPromotionBehavior {
	
	public Integer countPoint(Promotion promotion, Integer point);
	
}
