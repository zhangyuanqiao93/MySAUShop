package cn.edu.sau.eop.resource.impl;

import java.util.List;

import cn.edu.sau.eop.resource.IWidgetBundleManager;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.resource.model.WidgetBundle;

public class WidgetBundleManagerImpl extends BaseSupport<WidgetBundle> implements
        IWidgetBundleManager {

	
	public WidgetBundle getWidgetBundle(String widgetType) {
		String sql ="select * from widgetbundle where widgettype=?";
		return this.baseDaoSupport.queryForObject(sql, WidgetBundle.class, widgetType);
	}

	
	public List<WidgetBundle> getWidgetbundleList() {
		String sql ="select * from widgetbundle";
		return baseDaoSupport.queryForList(sql, WidgetBundle.class);
	}

	
	public void add(WidgetBundle widgetBundle) {
		this.baseDaoSupport.insert("widgetbundle", widgetBundle);
	}

 

}
