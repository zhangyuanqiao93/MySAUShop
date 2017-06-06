package cn.edu.sau.eop.resource.impl;

import java.util.Date;
import java.util.List;

import cn.edu.sau.app.base.core.model.DataLog;
import cn.edu.sau.app.base.core.model.DataLogMapper;
import cn.edu.sau.eop.resource.IDataLogManager;
import cn.edu.sau.eop.resource.IDomainManager;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.resource.model.EopSiteDomain;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.framework.util.DateUtil;
import cn.edu.sau.framework.util.StringUtil;


/**
 * 数据日志管理
 */
public class DataLogManager extends BaseSupport implements IDataLogManager {

	private IDomainManager domainManager;
	
	public void add(DataLog datalog) {
		
		if(datalog==null ) throw new IllegalArgumentException("参数datalog为空");
		EopSite site = EopContext.getContext().getCurrentSite();
		
		datalog.setDateline(DateUtil.getDatelineLong());
		datalog.setUserid(site.getUserid());
		datalog.setSiteid(site.getId());
		datalog.setSitename(site.getSitename());
		
		List<EopSiteDomain> domains =  domainManager.listSiteDomain( site.getId());
		if(domains!=null && domains.size()>0){
			datalog.setDomain(domains.get(0).getDomain());
		}
		this.daoSupport.insert("eop_data_log", datalog);
		
	}

	public Page list(String start, String end, int pageNo, int pageSize) {
		Date startDate = start==null?null:DateUtil.toDate(start, "yyyy-MM-dd");
		Date endDate = end==null?null:DateUtil.toDate(end, "yyyy-MM-dd");
		
		//如果没有输入结束日期，则为当前时间
		endDate= endDate==null? new Date():endDate;
		
		Integer startSec= null;
		if(startDate!=null)
		 startSec  = (int) (startDate.getTime()/1000);
		int endSec  = (int) (endDate.getTime()/1000);
		
		String sql ="select * from eop_data_log where dateline<="+ endSec;
		if(startDate!=null)  sql+=" and dateline>="+startSec;
		sql+=" order by dateline desc";
		
		
		return this.daoSupport.queryForPage(sql ,pageNo, pageSize,new DataLogMapper());
	}

	public IDomainManager getDomainManager() {
		return domainManager;
	}

	public void setDomainManager(IDomainManager domainManager) {
		this.domainManager = domainManager;
	}

	public void delete(Integer[] ids) {
		String idstr = StringUtil.arrayToString(ids, ",");
		this.daoSupport.execute("delete from eop_data_log where id in("+idstr+")");
		
	}

	
}
