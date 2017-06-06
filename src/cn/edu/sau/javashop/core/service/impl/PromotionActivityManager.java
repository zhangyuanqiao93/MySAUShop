package cn.edu.sau.javashop.core.service.impl;

import cn.edu.sau.framework.database.ObjectNotFoundException;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IPromotionActivityManager;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.PromotionActivity;

/**
 * 促销活动
 * 

 */
public class PromotionActivityManager extends BaseSupport<PromotionActivity>
		implements IPromotionActivityManager {

	
	public void add(PromotionActivity activity) {
		if(activity == null ) throw new  IllegalArgumentException("param activity is NULL");
		if(activity.getName() == null ) throw new  IllegalArgumentException("param activity.name is NULL");
		if(activity.getBegin_time() == null ) throw new  IllegalArgumentException("param activity.begin_time is NULL");
		if(activity.getEnd_time() == null ) throw new  IllegalArgumentException("param activity.end_time is NULL");
		this.baseDaoSupport.insert("promotion_activity", activity);
	}
	
	
	@Transactional(propagation = Propagation.REQUIRED)
	
	public void delete(Integer[] idArray) {
		if (idArray != null && idArray.length > 0) {
			String ids = StringUtil.arrayToString(idArray, ",");
			this.baseDaoSupport.execute(
					"delete from promotion_activity where id in (" + ids + ")");
			
			this.daoSupport.execute("delete from "+this.getTableName("pmt_member_lv")+" where pmt_id in(select pmt_id from "+this.getTableName("promotion")+" where pmta_id in(?))",ids);
			this.daoSupport.execute("delete from "+this.getTableName("pmt_goods")+" where pmt_id in(select pmt_id from "+this.getTableName("promotion")+" where pmta_id in(?))",ids);
			this.baseDaoSupport.execute("delete from promotion where pmta_id in(?)", ids);
		}

	}

	
	public void edit(PromotionActivity activity) {
		if(activity.getId() == null ) throw new  IllegalArgumentException("param activity.id is NULL");
		if(activity.getName() == null ) throw new  IllegalArgumentException("param activity.name is NULL");
		if(activity.getBegin_time() == null ) throw new  IllegalArgumentException("param activity.begin_time is NULL");
		if(activity.getEnd_time() == null ) throw new  IllegalArgumentException("param activity.end_time is NULL");
		this.baseDaoSupport.update("promotion_activity", activity, "id="
				+ activity.getId());

	}

	
	public PromotionActivity get(Integer id) {
		if(id == null ) throw new  IllegalArgumentException("param activity.id is NULL");
		PromotionActivity activity = this.baseDaoSupport.queryForObject(
				"select * from promotion_activity where id = ?",
				PromotionActivity.class, id);
		if(activity == null) throw new ObjectNotFoundException("activity is NULL");
		return activity;
	}

	
	public Page list(int pageNo, int pageSize) {
		String sql = "select * from promotion_activity order by id desc";
		return this.baseDaoSupport.queryForPage(sql, pageNo, pageSize);
	}

}
