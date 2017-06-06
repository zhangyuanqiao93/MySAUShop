package cn.edu.sau.app.base.widget.header;

import java.util.Map;

import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.StringUtil;


/**
 * 网站头挂件

 */
public class HeaderWidget extends AbstractWidget {

	
	protected void config(Map<String, String> params) {
		
	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("header");
		EopSite site = EopContext.getContext().getCurrentSite();
		
		String ctx = ThreadContextHolder.getHttpRequest().getContextPath();
		this.putData("ctx", ctx);
		
		if(this.getData(HeaderConstants.title)==null)
			this.putData(HeaderConstants.title, StringUtil.isEmpty(site.getTitle())?site.getSitename():site.getTitle());
		
		if(this.getData("keywords")==null)
			this.putData(HeaderConstants.keywords, site.getKeywords());
		
		if(this.getData("description")==null)
			this.putData(HeaderConstants.description, site.getDescript());
		
		this.putData("ico",  site.getIcofile());
		this.putData("logo", site.getLogofile());
	}


}
