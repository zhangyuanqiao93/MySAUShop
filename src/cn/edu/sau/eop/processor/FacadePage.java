package cn.edu.sau.eop.processor;

import cn.edu.sau.eop.resource.model.EopApp;
import cn.edu.sau.eop.resource.model.EopSite;

/**
 * 前台页面实体
 */
public class FacadePage {
	
	private Integer id;
	private EopSite site;
	private String uri;
	private EopApp app;
	

	public FacadePage(){

	}

	public FacadePage(EopSite site){
		this.site = site;
	}

	public EopSite getSite() {
		return site;
	}

	public void setSite(EopSite site) {
		this.site = site;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public EopApp getApp() {
		return app;
	}

	public void setApp(EopApp app) {
		this.app = app;
	}
	
	
 
	

}