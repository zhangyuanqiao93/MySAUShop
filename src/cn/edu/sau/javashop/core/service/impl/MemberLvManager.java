package cn.edu.sau.javashop.core.service.impl;
import java.util.ArrayList;
import java.util.List;

import cn.edu.sau.app.base.core.model.MemberLv;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IMemberLvManager;
import cn.edu.sau.framework.util.StringUtil;


/**
 * 会员级别管理

 */
public class MemberLvManager extends BaseSupport<MemberLv> implements IMemberLvManager {

	
	public void add(MemberLv lv) {
		this.baseDaoSupport.insert("member_lv", lv);
	}

	
	public void edit(MemberLv lv) {
		this.baseDaoSupport.update("member_lv", lv, "lv_id=" + lv.getLv_id());
	}

	
	public Integer getDefaultLv() {
		String sql  ="select * from member_lv where default_lv=1";
		List<MemberLv> lvList  = this.baseDaoSupport.queryForList(sql, MemberLv.class);
		if(lvList==null || lvList.isEmpty()){
			return null;
		}
		
		return lvList.get(0).getLv_id();
	}

	
	public Page list(String order, int page, int pageSize) {
		order = order == null ? " lv_id desc" : order;
		String sql = "select * from member_lv ";
		sql += " order by  " + order;
		Page webpage = this.baseDaoSupport.queryForPage(sql, page, pageSize);
		return webpage;
	}

	
	public MemberLv get(Integer lvId) {
		if(lvId!=null&&lvId!=0){
			String sql = "select * from member_lv where lv_id=?";
			MemberLv lv = this.baseDaoSupport.queryForObject(sql, MemberLv.class,
				lvId);
			return lv;
		}else{
			return null;
		}
	}

	
	public void delete(String id) {
		if (id == null || id.equals(""))
			return;
		String sql = "delete from member_lv where lv_id in (" + id + ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public List<MemberLv> list() {
		String sql = "select * from member_lv order by lv_id";
		List lvlist = this.baseDaoSupport.queryForList(sql, MemberLv.class);
		return lvlist;
	}

	
	public List<MemberLv> list(String ids) {
		
		if( StringUtil.isEmpty(ids)) return new ArrayList();
		
		String sql = "select * from member_lv where  lv_id in("+ids+") order by lv_id";
		List lvlist = this.baseDaoSupport.queryForList(sql, MemberLv.class);
		return lvlist;
		 
	}


	public MemberLv getByPoint(int point) {
		String sql = "select * from member_lv where  point<=? order by point desc";
		List<MemberLv> list =this.baseDaoSupport.queryForList(sql, MemberLv.class,point);
		if(list==null || list.isEmpty())
		return null;
		else
			return list.get(0);
	}

	 

	 

}
