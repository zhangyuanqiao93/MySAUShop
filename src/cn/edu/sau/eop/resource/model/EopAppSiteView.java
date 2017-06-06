package cn.edu.sau.eop.resource.model;

/**
 * 应用-站点视图，反映所有已接入应用与站点的关系
 *
 */
public class EopAppSiteView extends EopApp {
	private Integer installedsiteid;

	public Integer getInstalledsiteid() {
		return installedsiteid;
	}

	public void setInstalledsiteid(Integer installedsiteid) {
		this.installedsiteid = installedsiteid;
	}

}
