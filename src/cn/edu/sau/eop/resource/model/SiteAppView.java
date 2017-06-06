package cn.edu.sau.eop.resource.model;

/**

 */
public class SiteAppView {
	private Integer id;
	private Integer siteid;
	private Integer userid;
	private String appid;
	private String app_name;
	private String descript;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSiteid() {
		return siteid;
	}

	public void setSiteid(Integer siteid) {
		this.siteid = siteid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getApp_name() {
		return app_name;
	}

	public void setApp_name(String appName) {
		app_name = appName;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

}
