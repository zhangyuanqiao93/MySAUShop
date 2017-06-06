package cn.edu.sau.eop.resource.impl;

import cn.edu.sau.eop.resource.IUserDetailManager;
import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.eop.resource.model.EopUserDetail;

/**
 * 用户详细信息管理
 */
public class UserDetailManagerImpl implements IUserDetailManager {
	private IDaoSupport<EopUserDetail> daoSupport;
	
	public void add(EopUserDetail eopUserDetail) {
		this.daoSupport.insert("eop_userdetail", eopUserDetail);
	}

	
	public void edit(EopUserDetail eopUserDetail) {
		this.daoSupport.update("eop_userdetail", eopUserDetail, " userid = " + eopUserDetail.getUserid());
	}

	
	public EopUserDetail get(Integer userid) {
		return this.daoSupport.queryForObject(	"select * from eop_userdetail where userid = ?",
				EopUserDetail.class, userid);
	}

	public IDaoSupport<EopUserDetail> getDaoSupport() {
		return daoSupport;
	}

	public void setDaoSupport(IDaoSupport<EopUserDetail> daoSupport) {
		this.daoSupport = daoSupport;
	}

	
}
