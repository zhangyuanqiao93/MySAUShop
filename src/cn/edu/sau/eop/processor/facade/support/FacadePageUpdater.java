package cn.edu.sau.eop.processor.facade.support;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.processor.IPageUpdater;
import cn.edu.sau.eop.processor.widget.WidgetXmlUtil;
import cn.edu.sau.eop.resource.IThemeManager;
import cn.edu.sau.eop.resource.IThemeUriManager;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.framework.util.FileUtil;
import cn.edu.sau.eop.processor.widget.IWidgetParamUpdater;
import cn.edu.sau.eop.resource.model.ThemeUri;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 * 前台页面更新器
 */
public class FacadePageUpdater implements IPageUpdater {
	private IThemeManager themeManager ;
	private IWidgetParamUpdater widgetParamUpdater;
	
	
	public void update(String uri,String pageContent,String paramJson) {
		//去掉uri问号以后的东西
		if(uri.indexOf('?')>0)
			uri = uri.substring(0, uri.indexOf('?') );

		//站点使用模板
		EopSite site = EopContext.getContext().getCurrentSite();

		//rewrite url，即pageId
		IThemeUriManager themeUriManager =  SpringContextHolder.getBean("themeUriManager");
		ThemeUri themuri  =themeUriManager.getPath(uri);
		uri = themuri.getPath();
		
		//将json字串转为map
		List<Map<String,String>> mapList= WidgetXmlUtil.jsonToMapList(paramJson);
		
		//调用接口更新挂件参数
		widgetParamUpdater.update(uri, mapList);
		
		//前当使用主题路径
		String themePath = themeManager.getTheme(site.getThemeid()).getPath();
		String contextPath  = EopContext.getContext().getContextPath();
		String pagePath = 
			 EopSetting.EOP_PATH
			+contextPath
			+"/"+EopSetting.THEMES_STORAGE_PATH
			+"/"+themePath
			+"/"+uri;
//		 
//		String oldContent  = FileUtil.read(pagePath, "UTF-8");
//		Pattern p = Pattern.compile("(.*)<div([^<|^>]*?)id=\"AllWrap\"([^<|^>]*?)>(.*)</div>(.*)", 2 | Pattern.DOTALL);
//		Matcher m = p.matcher(oldContent);  
//		if(m.find()){
//			pageContent=StringUtil.filterDollarStr(pageContent);
//			String s = m.replaceAll("$1<body>"+pageContent+"</body>$3");		
//			//更新模板文件内容
//			FileUtil.write(pagePath, s);		
//		}		
	
		pageContent ="<#include 'common/header.html' />"+pageContent+"<#include 'common/footer.html' />";
		FileUtil.write(pagePath, pageContent);
	}

	public void setThemeManager(IThemeManager themeManager) {
		this.themeManager = themeManager;
	}

	public void setWidgetParamUpdater(IWidgetParamUpdater widgetParamUpdater) {
		this.widgetParamUpdater = widgetParamUpdater;
	}
	
	

}
