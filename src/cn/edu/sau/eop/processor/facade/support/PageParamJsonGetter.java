package cn.edu.sau.eop.processor.facade.support;

import java.util.Map;

import cn.edu.sau.eop.processor.IPageParamJsonGetter;
import cn.edu.sau.eop.processor.widget.WidgetXmlUtil;
import cn.edu.sau.eop.resource.IThemeManager;
import cn.edu.sau.eop.resource.IThemeUriManager;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.processor.widget.IWidgetParamParser;
import cn.edu.sau.eop.resource.model.ThemeUri;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 * 页面挂件json格式参数获取器
 */
public class PageParamJsonGetter implements IPageParamJsonGetter {
	private IWidgetParamParser widgetParamParser;
	 
	private IThemeManager themeManager ;
	
	
	
	public String getJson(String uri) {
		//去掉uri问号以后的东西
		if(uri.indexOf('?')>0)
			uri = uri.substring(0, uri.indexOf('?') );
		
		//站点使用模板
		EopSite site = EopContext.getContext().getCurrentSite();
	 
		
		//rewrite url = pageId
		IThemeUriManager themeUriManager =  SpringContextHolder.getBean("themeUriManager");
		ThemeUri themeUri  = themeUriManager.getPath(  uri);
		uri = themeUri.getPath();
		
		//此站点挂件参数集合
		Map<String, Map<String, Map<String, String>>> pages = this.widgetParamParser
				.parse();
		
		//此页面的挂件参数集合
		Map<String, Map<String,String>> params=pages.get(uri);
		String json = WidgetXmlUtil.mapToJson(params);
		json="{'pageId':'"+uri+"',params:"+json+"}";
		return json;
	}
	
	
	public void setWidgetParamParser(IWidgetParamParser widgetParamParser) {
		this.widgetParamParser = widgetParamParser;
	}
 

	public void setThemeManager(IThemeManager themeManager) {
		this.themeManager = themeManager;
	}

}
