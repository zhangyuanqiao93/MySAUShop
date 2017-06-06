package cn.edu.sau.javashop.core.plugin.promotion;

import java.util.List;

import cn.edu.sau.framework.plugin.AutoRegisterPluginsBundle;
import cn.edu.sau.framework.plugin.IPlugin;

/**
 * 优惠规则插件桩

 */
public class PromotionPluginBundle extends AutoRegisterPluginsBundle {

	
	public String getName() {
		 
		return "优惠规则插件桩";
	}
	
	public List<IPlugin> getPluginList(){
		
		return this.plugins;
	}
	
	

}
