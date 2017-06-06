package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.FreeOfferCategory;
import cn.edu.sau.javashop.core.service.IFreeOfferCategoryManager;

/**
 * 赠品分类管理

 * <br/>
 */
public class FreeOfferCategoryManager extends BaseSupport<FreeOfferCategory>
		implements IFreeOfferCategoryManager {

	
	public void clean(String bid) {
		if (bid == null || bid.equals(""))
			return;
		String sql = "delete  from  freeoffer_category   where cat_id in ("
				+ bid + ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public void delete(String bid) {
		if (bid == null || bid.equals(""))
			return;
		String sql = "update freeoffer_category set disabled=1  where cat_id in ("
				+ bid + ")";
		this.baseDaoSupport.execute(sql);

	}

	
	public FreeOfferCategory get(int cat_id) {
		String sql = "select * from freeoffer_category where cat_id=?";
		return baseDaoSupport.queryForObject(sql, FreeOfferCategory.class,
				cat_id);
	}

	
	public List getFreeOfferCategoryList() {
		String sql="select * from freeoffer_category";
		return baseDaoSupport.queryForList(sql);
	}

	
	public Page pageTrash(String name, String order, int page, int pageSize) {
		order = order == null ? " cat_id desc" : order;
		String sql = "select * from freeoffer_category";
		name = name == null ? " disabled=1 ": " disabled=1 and cat_name like '%" + name+ "%'";
		sql += " where " + name;
		sql += " order by  " + order;
		Page webpage = this.baseDaoSupport.queryForPage(sql, page, pageSize);
		return webpage;
	}

	
	public void revert(String bid) {
		if (bid == null || bid.equals(""))
			return;
		String sql = "update freeoffer_category set disabled=0  where cat_id in ("
				+ bid + ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public void saveAdd(FreeOfferCategory freeOfferCategory) {
		this.baseDaoSupport.insert("freeoffer_category", freeOfferCategory);
	}

	
	public Page searchFreeOfferCategory(String name, String order, int page,
			int pageSize) {
		order = order == null ? " cat_id desc" : order;
		String sql = "select * from freeoffer_category";
		name = name == null ? " disabled=0 ": " disabled=0 and cat_name like '%" + name+ "%'";
		sql += " where " + name;
		sql += " order by  " + order;
		Page webpage = this.baseDaoSupport.queryForPage(sql, page, pageSize);
		return webpage;
	}

	
	public void update(FreeOfferCategory freeOfferCategory) {
		this.baseDaoSupport.update("freeoffer_category",
				freeOfferCategory, "cat_id="
						+ freeOfferCategory.getCat_id());

	}

}
