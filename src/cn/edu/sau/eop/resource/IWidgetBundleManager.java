package cn.edu.sau.eop.resource;

import java.util.List;

import cn.edu.sau.eop.resource.model.WidgetBundle;

/**
 * 挂件管理

 */
public interface IWidgetBundleManager {

	
	public void add(WidgetBundle widgetBundle);
	public List<WidgetBundle> getWidgetbundleList();
	public WidgetBundle getWidgetBundle(String widgetType);
}
