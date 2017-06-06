package cn.edu.sau.javashop.widget.article;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.util.RequestUtil;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.model.Article;
import cn.edu.sau.javashop.core.service.IArticleManager;

public class HelpWidget extends AbstractWidget {
	
	private IArticleManager articleManager;

	
	protected void  display(Map<String, String> params) {
		this.setPageName("helpdetail");
		Integer article_id = this.getArticleId();
		Article article = articleManager.get(article_id);
		this.putData("article", article);
		 
	}
	
	protected void config(Map<String, String> params) {
		
		
	}
	
	private Integer getArticleId(){
		HttpServletRequest httpRequest = ThreadContextHolder.getHttpRequest();
		String url = RequestUtil.getRequestUrl(httpRequest);
		
		if(url.startsWith("/widget")) return 0;
		
		String article_id = this.paseArticleId(url);
		
		return Integer.valueOf(article_id);
	}

	private  static  String  paseArticleId(String url){
		String pattern = "/(.*)-(\\d+).html(.*)";
		String value = null;
		Pattern p = Pattern.compile(pattern, 2 | Pattern.DOTALL);
		Matcher m = p.matcher(url);
		if (m.find()) {
			value = m.replaceAll("$2");
		}
		return value;
	}
	public IArticleManager getArticleManager() {
		return articleManager;
	}
	public void setArticleManager(IArticleManager articleManager) {
		this.articleManager = articleManager;
	}
}
