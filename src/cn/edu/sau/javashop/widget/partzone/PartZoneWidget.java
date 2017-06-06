package cn.edu.sau.javashop.widget.partzone;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.javashop.core.model.Article;
import cn.edu.sau.javashop.core.service.IArticleManager;

/**
 * 显示区域挂件

 */
public class PartZoneWidget extends AbstractWidget {
	
	private IArticleManager articleManager;

	
	protected void config(Map<String, String> params) {
		this.setPageName("partzone_comfig");
		List articleList = articleManager.listByCatId(9999);
		this.putData("articleList", articleList);

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("partzone");
		String article_id = params.get("article_id");
		article_id = article_id == null ? "0" : article_id;
		Article article = articleManager.get(Integer.valueOf(article_id));
		this.putData("articleContent", article.getContent());

	}

	public IArticleManager getArticleManager() {
		return articleManager;
	}

	public void setArticleManager(IArticleManager articleManager) {
		this.articleManager = articleManager;
	}

}
