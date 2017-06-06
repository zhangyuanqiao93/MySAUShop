package cn.edu.sau.eop.resource.impl;

import java.util.List;

import cn.edu.sau.eop.resource.IAppManager;
import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.eop.resource.model.EopApp;

/**
 * 应用管理

 */
public class AppManagerImpl implements IAppManager {

	private IDaoSupport< EopApp > daoSupport;
	
	public EopApp get(String appid) {
		String sql ="select * from eop_app where id=?";
		return this.daoSupport.queryForObject(sql, EopApp.class, appid);
	}

	
	public List<EopApp> list() {
		String sql ="select * from eop_app";
		return this.daoSupport.queryForList(sql,  EopApp.class);
	}

	public IDaoSupport<EopApp> getDaoSupport() {
		return daoSupport;
	}

	public void setDaoSupport(IDaoSupport<EopApp> daoSupport) {
		this.daoSupport = daoSupport;
	}

	
	public void add(EopApp app) {
		this.daoSupport.insert("eop_app", app);
	}

}
