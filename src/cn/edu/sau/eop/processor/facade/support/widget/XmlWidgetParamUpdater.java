package cn.edu.sau.eop.processor.facade.support.widget;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.resource.IThemeManager;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;

import cn.edu.sau.eop.processor.widget.IWidgetParamUpdater;
import cn.edu.sau.eop.processor.widget.WidgetXmlUtil;
import cn.edu.sau.eop.resource.model.Theme;
import cn.edu.sau.eop.sdk.context.EopSetting;

/**
 * saas式挂件参数更新
 */
public class XmlWidgetParamUpdater implements IWidgetParamUpdater {
	private IThemeManager themeManager;
	
	
	public void update(String pageId,List<Map<String,String>> params) {
		EopSite site  = EopContext.getContext().getCurrentSite();
		Theme theme = themeManager.getTheme(site.getThemeid());
		String contextPath  = EopContext.getContext().getContextPath();
		String path =
		EopSetting.EOP_PATH	
		+contextPath
		+ EopSetting.THEMES_STORAGE_PATH+
		"/" + theme.getPath()  + "/widgets.xml"; 
			
		WidgetXmlUtil.save(path, pageId, params);		
	}
	
	public void setThemeManager(IThemeManager themeManager) {
		this.themeManager = themeManager;
	}
	

}
