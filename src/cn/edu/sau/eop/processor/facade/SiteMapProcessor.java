package cn.edu.sau.eop.processor.facade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.app.base.core.service.ISitemapManager;
import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.core.ContextType;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.eop.processor.core.StringResponse;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

public class SiteMapProcessor implements Processor {

	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {
		ISitemapManager siteMapManager = SpringContextHolder.getBean("sitemapManager");
		String siteMapStr = siteMapManager.getsitemap();
		Response response = new StringResponse();
		response.setContent(siteMapStr);
		response.setContentType(ContextType.XML);
		return response;
	}

}
