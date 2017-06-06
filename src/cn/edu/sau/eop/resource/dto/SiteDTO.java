package cn.edu.sau.eop.resource.dto;

import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.resource.model.EopSiteAdmin;
import cn.edu.sau.eop.resource.model.EopSiteDomain;

/**


 */
public class SiteDTO {
	private EopSite site;
	private EopSiteDomain domain;
	private EopSiteAdmin siteAdmin;
	
//	public SiteDTO(){
//		site = new EopSite();
//		domainList = new ArrayList<EopSiteDomain>();
//		listSiteApp = new ArrayList<EopSiteApp>();
//		siteAdminList = new ArrayList<EopSiteAdmin>();
//	}
	
	public void vaild(){
		if(this.domain==null){
			throw new IllegalArgumentException("站点至少要有一个域名！");
		}		
		
		if(this.siteAdmin==null){
			throw new IllegalArgumentException("站点至少应该指定一位管理员！");
		}
	}
	
	public void setUserId(Integer userid){
		site.setUserid(userid);
		domain.setUserid(userid);
		siteAdmin.setUserid(userid);
	}
	
	public void setSiteId(Integer siteid){
		domain.setSiteid(siteid);
		siteAdmin.setSiteid(siteid);
	}
	
	public void setManagerid(Integer managerid){
		siteAdmin.setManagerid(managerid);
	}

	public EopSite getSite() {
		return site;
	}

	public void setSite(EopSite site) {
		this.site = site;
	}

	public EopSiteDomain getDomain() {
		return domain;
	}

	public void setDomain(EopSiteDomain domain) {
		this.domain = domain;
	}

	public EopSiteAdmin getSiteAdmin() {
		return siteAdmin;
	}

	public void setSiteAdmin(EopSiteAdmin siteAdmin) {
		this.siteAdmin = siteAdmin;
	}

}
