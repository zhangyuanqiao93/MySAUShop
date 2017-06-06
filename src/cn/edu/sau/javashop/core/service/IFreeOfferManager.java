package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.FreeOffer;

/**
 * 赠品管理
 * 

 * <br/>
 */
public interface IFreeOfferManager {
	
	public FreeOffer get(int fo_id);
	
	public void saveAdd(FreeOffer freeOffer);
	
	public void update(FreeOffer freeOffer);
	
	public void delete(String bid);
	
	public void revert(String bid);
	
	public void clean(String bid);
	
	
	
	
	/**
	 * 分页读取所有赠品列表
	 * @param page
	 * @param pageSize
	 */
	public Page list(int page, int pageSize);
	
	
	
	
	public Page list(String name, String order, int page, int pageSize);
	
	public Page pageTrash(String name, String order, int page, int pageSize);
	
	/**
	 * 取得订单对应的赠品列表
	 * @param order_id
	 * @return
	 */
	public List getOrderGift(int order_id);
	
	
	/**
	 * 根据某些赠品id读取赠品列表
	 * @param ids 赠品id数组 
	 * @return 赚品列表
	 */
	public List list(Integer[] ids);
	
	

}
