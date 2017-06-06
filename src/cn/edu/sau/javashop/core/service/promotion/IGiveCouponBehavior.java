package cn.edu.sau.javashop.core.service.promotion;

/**
 * 优惠行为-送优惠卷

 */
public interface IGiveCouponBehavior  extends IPromotionBehavior{
	
	/**
	 * 送出优惠卷
	 */
	public void giveCoupon();
	
	
}
