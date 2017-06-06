package cn.edu.sau.app.base.widget.menu;

import java.util.List;
import java.util.Map;

import cn.edu.sau.app.base.core.service.ISiteMenuManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 菜单挂件

 */
public class MenuWidget  extends AbstractWidget{
	private ISiteMenuManager siteMenuManager;
	
	protected void display(Map<String, String> params) {
		List menuList  =siteMenuManager.list(0);
		this.putData("menuList", menuList);
		
		String isDropDown =  params.get("isDropDown");
		isDropDown =StringUtil.isEmpty(isDropDown)?"off":"on";
		this.putData("isDropDown", isDropDown);
	}
	
	protected void config(Map<String, String> params) {

		 this.setPageName("menu_config");	
	}
	public ISiteMenuManager getSiteMenuManager() {
		return siteMenuManager;
	}
	public void setSiteMenuManager(ISiteMenuManager siteMenuManager) {
		this.siteMenuManager = siteMenuManager;
	}
	
}
