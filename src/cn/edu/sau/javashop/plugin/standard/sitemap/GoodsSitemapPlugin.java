package cn.edu.sau.javashop.plugin.standard.sitemap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.core.model.SiteMapUrl;
import cn.edu.sau.app.base.core.plugin.IRecreateMapEvent;
import cn.edu.sau.app.base.core.service.ISitemapManager;
import cn.edu.sau.javashop.core.plugin.goods.AbstractGoodsPlugin;
import cn.edu.sau.javashop.core.plugin.goods.IGoodsDeleteEvent;
import cn.edu.sau.javashop.core.service.IGoodsManager;

/**
 * 商品对应Sitemap的插件
 * @author zyq<br/>
 * 2010-12-1 下午01:44:16<br/>
 * version 2.1.5
 */
public class GoodsSitemapPlugin extends AbstractGoodsPlugin implements IGoodsDeleteEvent, IRecreateMapEvent {
	
	private ISitemapManager sitemapManager;
	private IGoodsManager goodsManager;

	public void addTabs() {

	}

	public String onFillGoodsAddInput(HttpServletRequest request) {
		return null;
	}

	public void onBeforeGoodsAdd(Map goods, HttpServletRequest request) {

	}

	public String onFillGoodsEditInput(Map goods, HttpServletRequest request) {
		return null;
	}

	public void onAfterGoodsAdd(Map goods, HttpServletRequest request)
			throws RuntimeException {
		SiteMapUrl url = new SiteMapUrl();
		url.setLoc("/goods-"+ goods.get("goods_id").toString()+".html");
		url.setLastmod(System.currentTimeMillis());
		//url.setChangefreq("weekly");
		//url.setPriority("0.8");
		this.sitemapManager.addUrl(url);

	}
	
	public void onRecreateMap() {
		List<Map> list = this.goodsManager.list();
		for(Map map:list){
			SiteMapUrl url = new SiteMapUrl();
			url.setLoc("/goods-" + map.get("goods_id") + ".html");
			url.setLastmod(System.currentTimeMillis());
			this.sitemapManager.addUrl(url);
		}
	}
	

	public void onAfterGoodsEdit(Map goods, HttpServletRequest request) {
		this.sitemapManager.editUrl("/goods-"+ goods.get("goods_id").toString()+".html", System.currentTimeMillis());
	}

	public void onBeforeGoodsEdit(Map goods, HttpServletRequest request) {

	}
	

	public void onGoodsDelete(Integer[] goodsid) {
		for(int i:goodsid){
			this.sitemapManager.delete("/goods-" + i +".html");
		}
		
	}

	public String getAuthor() {
		return "lzf";
	}

	public String getId() {
		return "goods-sitemap";
	}

	public String getName() {
		return "商品数据sitemap记录插件";
	}

	public String getType() {
		return "sitemap";
	}

	public String getVersion() {
		return "v2.1.5";
	}

	public void perform(Object... params) {

	}

	public ISitemapManager getSitemapManager() {
		return sitemapManager;
	}

	public void setSitemapManager(ISitemapManager sitemapManager) {
		this.sitemapManager = sitemapManager;
	}

	public IGoodsManager getGoodsManager() {
		return goodsManager;
	}

	public void setGoodsManager(IGoodsManager goodsManager) {
		this.goodsManager = goodsManager;
	}

}
