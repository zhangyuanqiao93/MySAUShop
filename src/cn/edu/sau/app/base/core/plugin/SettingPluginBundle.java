package cn.edu.sau.app.base.core.plugin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.framework.plugin.AutoRegisterPluginsBundle;
import cn.edu.sau.framework.plugin.IPlugin;



/**
 * 系统设置插件桩
 */
public class SettingPluginBundle extends AutoRegisterPluginsBundle {
	
 
	protected static final Log loger = LogFactory
			.getLog(SettingPluginBundle.class);



	
	public String getName() {
		return "系统设置插件桩";
	}



	
	public void registerPlugin(IPlugin plugin) {
		super.registerPlugin(plugin);
	}

	public List<String> onInputShow(Map<String,Map<String,String>> settings){
		//Map<String,Map<String,String>> settings  = settingService.getSetting();
		
		List<String> htmlList  = new ArrayList<String>();
		FreeMarkerPaser freeMarkerPaser =  FreeMarkerPaser.getInstance();
		
		if (plugins != null) {
			for (IPlugin plugin : plugins) {
				if(plugin instanceof IOnSettingInputShow){
					IOnSettingInputShow event = (IOnSettingInputShow)plugin;
					String groupname = event.getSettingGroupName();
					String pageName = event.onShow();
					
					freeMarkerPaser.setClz(event.getClass());
					freeMarkerPaser.setPageName(pageName);
					freeMarkerPaser.putData(groupname, settings.get(groupname));
					
					htmlList.add(freeMarkerPaser.proessPageContent());
				}
			}
		}
		return htmlList;
	}

 


 
	
}
