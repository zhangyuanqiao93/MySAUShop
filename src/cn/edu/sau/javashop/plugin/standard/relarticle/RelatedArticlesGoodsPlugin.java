package cn.edu.sau.javashop.plugin.standard.relarticle;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.javashop.core.plugin.goods.AbstractGoodsPlugin;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

public class RelatedArticlesGoodsPlugin extends AbstractGoodsPlugin {
	private IDaoSupport baseDaoSupport;
	@Override
	public void addTabs() {
		this.addTags(12, "相关文章");

	}

	@Override
	public String onFillGoodsAddInput(HttpServletRequest request) {
		FreeMarkerPaser freeMarkerPaser =FreeMarkerPaser.getInstance();
		freeMarkerPaser.setPageName("RelatedArticles");
		return freeMarkerPaser.proessPageContent();
	}

	@Override
	public void onBeforeGoodsAdd(Map goods, HttpServletRequest request) {
		

	}

	@Override
	public String onFillGoodsEditInput(Map goods, HttpServletRequest request) {
		FreeMarkerPaser freeMarkerPaser =FreeMarkerPaser.getInstance();
		freeMarkerPaser.setPageName("RelatedArticles");
		String sql  ="select * from goods_articles where goodsid=?";
		List articleList  = this.baseDaoSupport.queryForList(sql, goods.get("goods_id"));
		freeMarkerPaser.putData("articleList",articleList);
		return freeMarkerPaser.proessPageContent();
	}


	private void processData(Map goods){
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		Integer goodsid  = Integer.valueOf( goods.get("goods_id").toString() );
		String[] articleidAr = request.getParameterValues("articleid");
		String[] titleAr = request.getParameterValues("title");
		this.baseDaoSupport.execute("delete from goods_articles where goodsid=?", goodsid);
		int i=0;
		if(articleidAr!=null){
		for(String articleid: articleidAr){
			String title  = titleAr[i]; 
			this.baseDaoSupport.execute("insert into goods_articles(articleid,goodsid,title)values(?,?,?)", articleid,goodsid,title);
			
			i++;
		}
		}
	}
	
	
	@Override
	public void onAfterGoodsAdd(Map goods, HttpServletRequest request)
			throws RuntimeException {
		this.processData(goods);

	}

	@Override
	public void onAfterGoodsEdit(Map goods, HttpServletRequest request) {
		this.processData(goods);
	}

	
	
	
	@Override
	public void onBeforeGoodsEdit(Map goods, HttpServletRequest request) {
		

	}

	@Override
	public String getAuthor() {
		
		return "kingapex";
	}

	@Override
	public String getId() {
		
		return "rel_article";
	}

	@Override
	public String getName() {
		
		return "商品相关文章";
	}

	@Override
	public String getType() {
		
		return "goods";
	}

	@Override
	public String getVersion() {
		
		return "1.0";
	}

	@Override
	public void perform(Object... params) {
		

	}

	public IDaoSupport getBaseDaoSupport() {
		return baseDaoSupport;
	}

	public void setBaseDaoSupport(IDaoSupport baseDaoSupport) {
		this.baseDaoSupport = baseDaoSupport;
	}

}
