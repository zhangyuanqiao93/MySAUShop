package cn.edu.sau.javashop.core.service.impl;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.javashop.core.model.Seo;
import cn.edu.sau.javashop.core.service.ISeoManager;

/**
 * SEO管理
 * 

 * <br/>
 */
public class SeoManager extends BaseSupport<Seo> implements ISeoManager {

	
	public Seo getSeo() {
		String sql = "select * from seo where id=1";
		Seo seo = null;
		try {
			seo = baseDaoSupport.queryForObject(sql, Seo.class);
		} catch (Exception e) {
			seo = new Seo();
			seo.setId(1);
			baseDaoSupport.insert("seo", seo);
		}
		return seo;
	}

	
	public void update(Seo seo) {
		this.baseDaoSupport.update("seo", seo, "id=1");
	}

}
