package cn.edu.sau.eop.processor.backend.support;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.processor.AbstractFacadePagetParser;
import cn.edu.sau.eop.processor.FacadePage;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

public class HelpDivWrapper extends AbstractFacadePagetParser {

	public HelpDivWrapper(FacadePage page, Request request) {
		super(page, request);
	}

	@Override
	protected Response parse(Response response) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String content  = response.getContent();
		content = content+"<div id=\"HelpCtn\" class=\"popup-info-box\"><div class=\"bl\"><div class=\"br\">";
		content = content+"<div class=\"bd user-info\"><span id=\"HelpClose\" class=\"closebtn\" ></span>";
		content = content +"<span id=\"HelpBody\"></span>";
		content = content +"</div>";
		content = content +"</div>";
		content = content +"</div>";
		content = content +"<div class=\"bt\">";
		content = content +"<div class=\"corner bt-l\"></div>";
		content = content +"<div class=\"mid\"></div>";
		content = content +"<div class=\"corner bt-r\"></div>";
		content = content +"</div>";
		content = content +"</div>";
		response.setContent(content);
		return response;
	}

}
