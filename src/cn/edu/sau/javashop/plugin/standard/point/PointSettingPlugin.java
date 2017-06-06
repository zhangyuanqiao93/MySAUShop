package cn.edu.sau.javashop.plugin.standard.point;

import cn.edu.sau.app.base.core.plugin.IOnSettingInputShow;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.plugin.page.JspPageTabs;

public class PointSettingPlugin extends AutoRegisterPlugin implements
		IOnSettingInputShow {

	
	public void register() {
		JspPageTabs.addTab("setting",3, "积分设置");
	}

	
	public String getSettingGroupName() {
	
		return "point";
	}

	
	public String onShow() {
	
		return "setting";
	}

	
	public String getAuthor() {
	
		return "kingapex";
	}

	
	public String getId() {
	
		return "point_setting";
	}

	
	public String getName() {
	
		return "积分设置";
	}

	
	public String getType() {
	
		return "setting";
	}

	
	public String getVersion() {
	
		return "1.0";
	}

	
	public void perform(Object... params) {
		
	}

}
