package cn.edu.sau.javashop.core.plugin.search;

import java.util.List;

import cn.edu.sau.framework.plugin.AutoRegisterPluginsBundle;

public class GoodsDataFilterBundle extends AutoRegisterPluginsBundle {

	public String getName() {
		 
		return "商品数据过滤插件桩";
	}

	
	public List getPluginList(){
		
		return this.plugins;
	}
	
	
	
}
