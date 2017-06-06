package cn.edu.sau.app.base.core.service.impl;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.app.base.core.model.AdColumn;
import cn.edu.sau.app.base.core.service.IAdColumnManager;
import cn.edu.sau.eop.sdk.database.BaseSupport;

/**
 * 广告位管理
 * 
 * @author zyq lzf<br/>
 *         2010-2-4 下午03:56:01<br/>
 *         version 1.0<br/>
 * <br/>
 */
public class AdColumnManager extends BaseSupport<AdColumn> implements
		IAdColumnManager {

	
	public void addAdvc(AdColumn adColumn) {
		this.baseDaoSupport.insert("adcolumn", adColumn);
	}

	
	public void delAdcs(String ids) {
		if (ids == null || ids.equals(""))
			return;
		String sql = "delete from adcolumn where acid in (" + ids
				+ ")";
		this.baseDaoSupport.execute(sql);
	}

	
	public AdColumn getADcolumnDetail(Long acid) {
		AdColumn  adColumn = this.baseDaoSupport.queryForObject("select * from adcolumn where acid = ?", AdColumn.class, acid);
		return adColumn;
	}

	
	public List listAllAdvPos() {
		List<AdColumn> list = this.baseDaoSupport.queryForList("select * from adcolumn", AdColumn.class);
		return list;
	}

	
	public Page pageAdvPos(int page, int pageSize) {
		String sql = "select * from adcolumn";
		Page rpage = this.baseDaoSupport.queryForPage(sql, page, pageSize);
		return rpage;
	}

	
	public void updateAdvc(AdColumn adColumn) {
		this.baseDaoSupport.update("adcolumn", adColumn, "acid = " + adColumn.getAcid());
	}

}
