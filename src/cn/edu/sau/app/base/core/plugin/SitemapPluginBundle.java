package cn.edu.sau.app.base.core.plugin;

import cn.edu.sau.framework.plugin.AutoRegisterPluginsBundle;
import cn.edu.sau.framework.plugin.IPlugin;

public class SitemapPluginBundle extends AutoRegisterPluginsBundle {

	public String getName() {
		return "站点地图插件桩";
	}
	
	/**
	 * @param list
	 */
	public void onRecreateMap(){
		if (plugins != null) {
			for (IPlugin plugin : plugins) {
				if (plugin instanceof IRecreateMapEvent) {
					IRecreateMapEvent event = (IRecreateMapEvent) plugin;
					 event.onRecreateMap();
				}
			}
		}
		
	}

}
