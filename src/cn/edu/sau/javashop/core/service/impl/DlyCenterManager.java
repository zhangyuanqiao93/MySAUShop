package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.DlyCenter;
import cn.edu.sau.javashop.core.service.IDlyCenterManager;

/**
 * 发货中心

 */
public class DlyCenterManager extends BaseSupport<DlyCenter> implements IDlyCenterManager {

	
	public void add(DlyCenter dlyCenter) {
		this.baseDaoSupport.insert("dly_center", dlyCenter);
	}

	
	public void delete(Integer[] id) {
		if(id== null  || id.length==0  ) return ;
		String ids = StringUtil.arrayToString(id, ",");
		this.baseDaoSupport.execute("update dly_center set disabled = 'true' where dly_center_id in (" + ids + ")");

	}

	
	public void edit(DlyCenter dlyCenter) {
		this.baseDaoSupport.update("dly_center", dlyCenter, "dly_center_id = " + dlyCenter.getDly_center_id());

	}

	
	public List<DlyCenter> list() {
		return this.baseDaoSupport.queryForList("select * from dly_center where disabled = 'false'", DlyCenter.class);
	}

	
	public DlyCenter get(Integer dlyCenterId) {
		return this.baseDaoSupport.queryForObject("select * from dly_center where dly_center_id = ?", DlyCenter.class, dlyCenterId);
	}

}
