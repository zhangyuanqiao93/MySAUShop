package cn.edu.sau.eop.resource.model;

import java.io.Serializable;

/**
 * 平台DNS

 */
public class Dns implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7525130004L;
	
	private String domain;
	private EopSite site;
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public EopSite getSite() {
		return site;
	}
	public void setSite(EopSite site) {
		this.site = site;
	}
	
	

}
