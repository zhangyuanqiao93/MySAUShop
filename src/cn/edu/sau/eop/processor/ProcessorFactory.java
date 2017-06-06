package cn.edu.sau.eop.processor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.backend.BackgroundProcessor;
import cn.edu.sau.eop.resource.IAppManager;
import cn.edu.sau.eop.resource.model.EopApp;
import cn.edu.sau.eop.sdk.context.ConnectType;
import cn.edu.sau.eop.processor.facade.FacadePageProcessor;
import cn.edu.sau.eop.processor.facade.SiteMapProcessor;
import cn.edu.sau.eop.processor.facade.WebResourceProcessor;
import cn.edu.sau.eop.processor.facade.WidgetProcessor;
import cn.edu.sau.eop.processor.facade.WidgetSettingProcessor;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 */
public abstract class ProcessorFactory {

	/**
	 * 
	 * @param uri
	 */
	public static Processor newProcessorInstance(String uri,HttpServletRequest httpRequest){
		Processor processor =null;
//		if(uri.endsWith(".action") || uri.endsWith(".do") ) return null;
		if(uri.startsWith("/statics")) return null;
		if(uri.startsWith("/install") && !uri.startsWith("/install.html")  ) return null;
		
		//sitemap生成
		if(uri.toLowerCase().equals( "/sitemap.xml")) { 
			return new SiteMapProcessor();
		}
		
		if(uri.toLowerCase().equals("/robots.txt")){return null;}
		
		IAppManager appManager = SpringContextHolder.getBean("appManager");
		List<EopApp> appList  =  appManager.list();
		String path =httpRequest.getServletPath();
		for(EopApp app:appList){
			if(app.getDeployment()== ConnectType.remote) continue;
			
			if(path.startsWith(app.getPath() +"/admin" )) {
				if( isExinclude (path)){return null;}
				
				processor = new BackgroundProcessor();
				return processor;
			} 
			if( path.startsWith( app.getPath()  ) ){
				return null;
			}
		}
		
		if(uri.startsWith("/validcode")) return null;
		if(uri.startsWith("/editor/")) return null;
		if(uri.startsWith("/eop/")) return null;
		if(uri.startsWith("/test/")) return null;
		if(uri.endsWith("favicon.ico")) return null;
		
		if (uri.startsWith("/resource/")) { 
			return new WebResourceProcessor();
		} 
		
		if(isExinclude(uri)) return null;
 
		if (uri.startsWith("/admin/")) { 
			if (!uri.startsWith("/admin/themes/")) {
					processor = new BackgroundProcessor();
			}
		} else if (uri.startsWith("/widget")) {
			
			if(uri.startsWith("/widgetSetting/")){
				processor = new WidgetSettingProcessor();
			}else if(uri.startsWith("/widgetBundle/")){
			//	processor = new WidgetBundleProcessor();
			}else{		 
				processor = new WidgetProcessor();
			}
		} else{
 
			if(uri.endsWith(".action") || uri.endsWith(".do") ) return null;
			if(EopSetting.TEMPLATEENGINE.equals("on"))
				processor = new FacadePageProcessor();
		}
		 
		return processor;
	}
	
 

	private static boolean isExinclude(String uri){
		
		String[] exts=new String[]{"jpg","gif","js","png","css","doc","xls","swf"};
		for(String ext:exts){ 
			if(uri.toUpperCase().endsWith(ext.toUpperCase())){
				return true;
			}
		}
		
		return false;
	}

}