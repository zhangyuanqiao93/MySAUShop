package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.FreeOfferCategory;

/**
 * 赠品分类管理
 * 
 * @author zyq<br/>
 *         2010-1-18 上午10:10:57<br/>
 *         version 1.0<br/>
 * <br/>
 */
public interface IFreeOfferCategoryManager {
	public FreeOfferCategory get(int cat_id);

	public void saveAdd(FreeOfferCategory freeOfferCategory);

	public void update(FreeOfferCategory freeOfferCategory);

	public void delete(String bid);

	public void revert(String bid);

	public void clean(String bid);

	public List getFreeOfferCategoryList();

	public Page searchFreeOfferCategory(String name, String order, int page,
                                        int pageSize);

	public Page pageTrash(String name, String order, int page, int pageSize);

}