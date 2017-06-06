package cn.edu.sau.eop.processor.facade.support.widget;

import java.util.Map;

import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.processor.widget.IWidgetParamParser;
import cn.edu.sau.eop.processor.widget.WidgetXmlUtil;
import cn.edu.sau.eop.resource.IThemeManager;
import cn.edu.sau.eop.resource.model.Theme;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.context.EopSetting;

/**
 *  SAAS式的xml挂件参数解析器
 */
public class XmlWidgetParamParser implements IWidgetParamParser {

	 
	private IThemeManager themeManager;
	
	public Map<String, Map<String, Map<String,String>>> parse() {
		EopSite site  =EopContext.getContext().getCurrentSite();
		Theme theme = themeManager.getTheme(site.getThemeid());
		String contextPath  = EopContext.getContext().getContextPath();
		String path =
		EopSetting.EOP_PATH	
		+contextPath
		+ EopSetting.THEMES_STORAGE_PATH+
		"/" + theme.getPath()  + "/widgets.xml"; 
		
		return WidgetXmlUtil.parse(path);
	}
	public void setThemeManager(IThemeManager themeManager) {
		this.themeManager = themeManager;
	}
	
	
}
