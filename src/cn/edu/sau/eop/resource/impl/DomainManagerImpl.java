package cn.edu.sau.eop.resource.impl;

import java.util.List;

import cn.edu.sau.eop.resource.IDomainManager;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.eop.resource.model.EopSiteDomain;

/**
 * 域名管理
 */
public class DomainManagerImpl implements IDomainManager {

	private IDaoSupport<EopSiteDomain> daoSupport;

	
	
	public EopSiteDomain get(Integer id) {
		String sql = "select * from eop_sitedomain where id = ?";
		return daoSupport.queryForObject(sql, EopSiteDomain.class, id);
	}

	
	public List<EopSiteDomain> listUserDomain() {
		Integer userid = EopContext.getContext().getCurrentSite().getUserid();
		String sql = "select * from eop_sitedomain where userid=?";
		return this.daoSupport.queryForList(sql, EopSiteDomain.class, userid);
	}

	
	public List<EopSiteDomain> listSiteDomain() {
		EopSite site = EopContext.getContext().getCurrentSite();
		String sql = "select * from eop_sitedomain where userid=? and siteid =?";
		return this.daoSupport.queryForList(sql, EopSiteDomain.class, site
				.getUserid(), site.getId());
	}
	
	public List<EopSiteDomain> listSiteDomain(Integer siteid) {
		String sql = "select * from eop_sitedomain where  siteid =?";
		return this.daoSupport.queryForList(sql, EopSiteDomain.class, siteid);
	}
	
	public void edit(EopSiteDomain domain) {
		this.daoSupport.update("eop_sitedomain", domain, " id = "
				+ domain.getId());
	}

	public IDaoSupport<EopSiteDomain> getDaoSupport() {
		return daoSupport;
	}

	public void setDaoSupport(IDaoSupport<EopSiteDomain> daoSupport) {
		this.daoSupport = daoSupport;
	}

	
	public int getDomainCount(Integer siteid) {
		String sql = "select count(0)  from eop_sitedomain where  siteid =?";
		return this.daoSupport.queryForInt(sql, siteid);
	}




}
