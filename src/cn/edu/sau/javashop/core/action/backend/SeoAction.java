package cn.edu.sau.javashop.core.action.backend;

import cn.edu.sau.framework.action.WWAction;
import cn.edu.sau.javashop.core.model.Seo;
import cn.edu.sau.javashop.core.service.ISeoManager;

/**
 * SEO
 * 

 * <br/>
 */
public class SeoAction extends WWAction {
	
	private ISeoManager seoManager;
	private Seo seo;

	
	public String execute() throws Exception {
		seo = seoManager.getSeo();
		return this.SUCCESS;
	}
	
	public String save() throws Exception {
		seoManager.update(seo);
		this.msgs.add("SEO信息修改成功");
		this.urls.put("SEO信息", "seo.do");
		return this.MESSAGE;
	}

	public ISeoManager getSeoManager() {
		return seoManager;
	}

	public void setSeoManager(ISeoManager seoManager) {
		this.seoManager = seoManager;
	}

	public Seo getSeo() {
		return seo;
	}

	public void setSeo(Seo seo) {
		this.seo = seo;
	}

	
}
