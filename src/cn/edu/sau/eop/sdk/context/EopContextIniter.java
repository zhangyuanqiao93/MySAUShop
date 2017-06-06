package cn.edu.sau.eop.sdk.context;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.sau.app.base.core.model.MultiSite;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.app.base.core.service.IMultiSiteManager;
import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.eop.resource.ISiteManager;
import cn.edu.sau.framework.context.spring.SpringContextHolder;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**

 *
 */
public class EopContextIniter {
	
	public static void init(HttpServletRequest httpRequest,
			HttpServletResponse httpResponse){
		FreeMarkerPaser.set(new FreeMarkerPaser());
		FreeMarkerPaser fmp = FreeMarkerPaser.getInstance();
		/**
		 * 将requst response及静态资源域名加入到上下文
		 */
		HttpSession session = httpRequest.getSession();
		ThreadContextHolder.getSessionContext().setSession(session);
		EopContext.setHttpRequest(httpRequest);
		ThreadContextHolder.setHttpRequest(httpRequest);
		ThreadContextHolder.setHttpResponse(httpResponse);
		httpRequest.setAttribute("staticserver", EopSetting.IMG_SERVER_DOMAIN);
		httpRequest.setAttribute("ext", EopSetting.EXTENSION);
		String servletPath = httpRequest.getServletPath();

		// System.out.println("uri : "+ RequestUtil.getRequestUrl(httpRequest));
		if (servletPath.startsWith("/statics"))
			return;

		if( servletPath.startsWith("/install") ){
			EopSite site = new EopSite();
			site.setUserid(1);
			site.setId(1);
			site.setThemeid(1);
			EopContext context = new EopContext();
			context.setCurrentSite(site);
			EopContext.setContext(context);
		}else{
			EopContext context = new EopContext();
			EopSite site = new EopSite();
			site.setUserid(1);
			site.setId(1);
			site.setThemeid(1);
			context.setCurrentSite(site);
			EopContext.setContext(context);
			
			ISiteManager siteManager = SpringContextHolder.getBean("siteManager");
			site = siteManager.get("localhost");		 
		     
			context.setCurrentSite(site); 
			if(site.getMulti_site()==1){ //开启多站点功能
				String domain = httpRequest.getServerName();
				IMultiSiteManager multiSiteManager =  SpringContextHolder.getBean("multiSiteManager");
				MultiSite multiSite = multiSiteManager.get(domain);
				context.setCurrentChildSite(multiSite);
			}
			
			EopContext.setContext(context);
			fmp.putData("site", site);
		}
		
		/**
		 * 设置freemarker的相关常量
		 */
		fmp.putData("ctx", httpRequest.getContextPath());
		fmp.putData("ext", EopSetting.EXTENSION);
		fmp.putData("staticserver", EopSetting.IMG_SERVER_DOMAIN);
	}
	
	
}