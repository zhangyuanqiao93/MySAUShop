package cn.edu.sau.app.base.widget.im;

import cn.edu.sau.app.base.core.plugin.IOnSettingInputShow;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.plugin.page.JspPageTabs;

/**
 * 在线客服务设置插件

 */
public class IMSettingPlugin extends AutoRegisterPlugin  implements IOnSettingInputShow {

	public String getSettingGroupName() {
		
		return "im";
	}

	public String onShow() {
		
		return "setting";
	}

	
	public void register() {
		
		 JspPageTabs.addTab("setting",1, "在线客服");
	}

	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "imSettingPlugin";
	}

	
	public String getName() {
		
		return "imSettingPlugin";
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
