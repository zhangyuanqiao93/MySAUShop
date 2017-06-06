package cn.edu.sau.javashop.core.service.promotion;

import java.util.List;

import cn.edu.sau.javashop.core.model.Promotion;

/**
 * 优惠行为-送赠品

 */
public interface IGiveGiftBehavior  extends IPromotionBehavior{
	
	/**
	 * 送出赠品 
	 */
	public void giveGift(Promotion promotion, Integer orderId);
	
	
	public List getGiftList(Promotion promotion);
}
