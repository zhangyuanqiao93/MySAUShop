package cn.edu.sau.app.base.core.service.solution;

import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.eop.resource.model.EopProduct;

/**
 * 安装者管理

 */
public class InstallerManager {
	private IDaoSupport<EopProduct> daoSupport;
	
	public void add(Installer installer){
		String sql ="select count(0) from eop_installer where ip=?";
		int count = this.daoSupport.queryForInt(sql, installer.getIp());
		if(count==0)
			this.daoSupport.insert("eop_installer", installer);
	}
	
	public void add1(Installer installer){
		this.daoSupport.insert("eop_installer", installer);
	}
	
	public Page list(int pageNo, int pageSize){
		
		return this.daoSupport.queryForPage("select * from eop_installer order by installtime desc",pageNo, pageSize);
		
	}
	
	public IDaoSupport<EopProduct> getDaoSupport() {
		return daoSupport;
	}

	public void setDaoSupport(IDaoSupport<EopProduct> daoSupport) {
		this.daoSupport = daoSupport;
	}
	
}
