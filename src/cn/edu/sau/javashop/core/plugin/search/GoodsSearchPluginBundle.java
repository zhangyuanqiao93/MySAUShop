package cn.edu.sau.javashop.core.plugin.search;

import java.util.List;

import cn.edu.sau.framework.plugin.AutoRegisterPluginsBundle;

public class GoodsSearchPluginBundle extends AutoRegisterPluginsBundle {

	@Override
	public String getName() {
		 
		return "商品搜索插件桩";
	}
	
	public List getPluginList(){
		
		return this.plugins;
	}
	
 
	

}
