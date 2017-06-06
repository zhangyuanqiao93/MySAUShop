package cn.edu.sau.eop.processor.backend.support;

import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.processor.AbstractFacadePagetParser;
import cn.edu.sau.eop.processor.FacadePage;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.eop.sdk.utils.JspUtil;

/**
 * 后台页面包装器<br>
 * 用/admin/main_frame.jsp包装业务页面 <br>
 */
public class BackTemplateWrapper extends AbstractFacadePagetParser {
	
	public BackTemplateWrapper(FacadePage page, Request request) {
		super(page, request);
	}

	
	protected Response parse(Response response) {
		httpRequest.setAttribute("content", response.getContent());
		String content  = JspUtil.getJspOutput("/admin/main_frame.jsp", httpRequest, httpResponse);
		response.setContent(content);
		return response;
	}

}
