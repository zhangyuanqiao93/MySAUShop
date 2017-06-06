package cn.edu.sau.javashop.widget.search;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.model.Cat;
import cn.edu.sau.javashop.core.service.IBrandManager;
import cn.edu.sau.javashop.core.service.IGoodsCatManager;

/**
 * 高级搜索

 */
public class SearchWidget extends AbstractWidget {
	
	private IBrandManager brandManager;
	private IGoodsCatManager goodsCatManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String action = request.getParameter("action");
		if(action == null || "".equals(action)){
			this.setPageName("search");
			List<Cat> cat_tree =  goodsCatManager.listAllChildren(0);
			this.putData("cat_tree", cat_tree);	
		}
		
		if("brand".equals(action)){
			this.brandList();
		}

	}
	
	private void brandList(){
		
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		Integer catid = Integer.valueOf(request.getParameter("cat_id"));
		List brandList  = this.brandManager.listByCatId(catid);
		this.putData("brandList", brandList);
		this.setPageName("brandList");
	}
	

	public IBrandManager getBrandManager() {
		return brandManager;
	}

	public void setBrandManager(IBrandManager brandManager) {
		this.brandManager = brandManager;
	}

	public IGoodsCatManager getGoodsCatManager() {
		return goodsCatManager;
	}

	public void setGoodsCatManager(IGoodsCatManager goodsCatManager) {
		this.goodsCatManager = goodsCatManager;
	}

}
