package cn.edu.sau.javashop.widget.bind;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.widget.nav.Nav;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IGoodsManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

/**
 * 捆绑商品
 */
public class BindWidget extends AbstractWidget {
	
	private IGoodsManager goodsManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("bind");
		HttpServletRequest request =  ThreadContextHolder.getHttpRequest();
		String page  = request.getParameter("page");
		page = (page == null || page.equals("")) ? "1" : page;
		int pageSize = 20;
		Page bindPage = goodsManager.searchBindGoods(null, null, null, Integer.valueOf(page), pageSize);
		Long pageCount = bindPage.getTotalPageCount();
		List bindList = (List)bindPage.getResult();
		bindList = bindList == null ? new ArrayList() : bindList;
		this.putData("pageSize", pageSize);
		this.putData("page", page);
		this.putData("bindList", bindList);
		this.putData("pageCount", pageCount);
		
		Nav nav = new Nav();
		nav.setTitle("捆绑促销");
		this.putNav(nav);
	}

	public IGoodsManager getGoodsManager() {
		return goodsManager;
	}

	public void setGoodsManager(IGoodsManager goodsManager) {
		this.goodsManager = goodsManager;
	}

}
