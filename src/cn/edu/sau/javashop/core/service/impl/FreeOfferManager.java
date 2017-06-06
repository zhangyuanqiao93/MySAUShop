package cn.edu.sau.javashop.core.service.impl;

import java.util.ArrayList;
import java.util.List;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.utils.UploadUtil;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.FreeOffer;
import cn.edu.sau.javashop.core.model.mapper.GiftMapper;
import cn.edu.sau.javashop.core.service.IFreeOfferManager;

/**
 * 赠品管理
 * @author zyq lzf<br/>
 *         2010-1-15 下午01:31:08<br/>
 *         version 1.0<br/>
 * @since v2.1.2:将赠品图片存储改为相对，即fs:开头。读取后加上静态资源服务器地址。
 * <br/>
 */
public class FreeOfferManager extends BaseSupport<FreeOffer> implements
        IFreeOfferManager {
	
	
	public void delete(String bid) {
		if (bid == null || bid.equals(""))
			return;
		String sql = "update freeoffer set disabled=1  where fo_id in (" + bid
				+ ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public void revert(String bid) {
		if (bid == null || bid.equals(""))
			return;
		String sql = "update freeoffer set disabled=0  where fo_id in (" + bid
				+ ")";
		this.baseDaoSupport.execute(sql);
	}
	
	
	public void clean(String bid){
		if (bid == null || bid.equals(""))
			return;
		String sql = "delete  from  freeoffer   where fo_id in (" + bid + ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public FreeOffer get(int fo_id) {
		String sql = "select * from freeoffer where fo_id=?";
		FreeOffer freeOffer = baseDaoSupport.queryForObject(sql, FreeOffer.class, fo_id);
		String pic  = freeOffer.getPic();
		if(pic!=null){
			pic  = UploadUtil.replacePath(pic);
		}
		freeOffer.setPic(pic);
		return freeOffer;
	}

	
	public Page list(int page, int pageSize) {
		long now =System.currentTimeMillis();
		String sql = "select f.*,'' cat_name from freeoffer f where disabled=0 and publishable=0 and startdate<="+now+" and enddate>="+now+"  order by sorder asc ";
		return this.baseDaoSupport.queryForPage(sql, page, pageSize,new GiftMapper());
	}

	
	public void saveAdd(FreeOffer freeOffer) {
		this.baseDaoSupport.insert("freeoffer", freeOffer);

	}

	
	public void update(FreeOffer freeOffer) {
		this.baseDaoSupport.update("freeoffer", freeOffer, "fo_id="
				+ freeOffer.getFo_id());
	}
	
	private String getListSql(){
		String sql = "select fo.*,c.cat_name as cat_name from "
	          +this.getTableName("freeoffer")
            +" fo left join "+this.getTableName("freeoffer_category")
            +" c on fo.fo_category_id=c.cat_id ";
		return sql;
	}

	
	public Page pageTrash(String name, String order, int page, int pageSize) {
		order = order == null ? " fo_id desc" : order;
		String sql = getListSql();
		name = name == null ? " fo.disabled=1 ": " fo.disabled=1 and fo_name like '%" + name+ "%'";
		sql += " and " + name;
		sql += " order by  " + order;
		Page webpage = this.daoSupport.queryForPage(sql, page, pageSize,new GiftMapper());
		return webpage;
	}

	
	public Page list(String name, String order, int page,
			int pageSize) {
		order = order == null ? " fo_id desc" : order;
		String sql = getListSql();
		name = name == null ? " fo.disabled=0 ": " fodisabled=0 and fo_name like '%" + name+ "%'";
		sql += " and " + name;
		sql += " order by  " + order;
		Page webpage = this.daoSupport.queryForPage(sql, page, pageSize,new GiftMapper());
		return webpage;
	}

	
	public List getOrderGift(int orderId) {
		String sql = "select * from order_gift where order_id = ?";
		return this.baseDaoSupport.queryForList(sql, orderId);
	}

	/**
	 * @author zyq
	 */
	
	public List list(Integer[] ids) {
		if(ids==null || ids.length == 0) return new ArrayList();
		
		return this.baseDaoSupport.queryForList("select * from freeoffer where fo_id in("+ StringUtil.arrayToString(ids, ",")+") " ,new GiftMapper());
	}

}
