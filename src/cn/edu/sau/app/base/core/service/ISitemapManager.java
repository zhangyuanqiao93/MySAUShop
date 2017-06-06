package cn.edu.sau.app.base.core.service;

import cn.edu.sau.app.base.core.model.SiteMapUrl;

/**
 * Sitemap接口
 *         Usage: <br/>
 *         init(); <br/>
 *         add(url);//if need <br/>
 *         edit(url);// if need <br/>
 *         getsitemap();//最终的xml格式的串
 */
public interface ISitemapManager {

	/**
	 * 取得sitemap的文字串(xml格式)
	 * 
	 * @return
	 */
	public String getsitemap();

	/**
	 * 向sitemap中加入一个url
	 * 
	 * @param url
	 */
	public void addUrl(SiteMapUrl url);

	/**
	 * 修改sitemap中的url
	 * 
	 * @param url
	 */
	public void editUrl(String loc, Long lastmod);
	
	
	
	public int delete(String loc);
	
	public void clean();

	

}
