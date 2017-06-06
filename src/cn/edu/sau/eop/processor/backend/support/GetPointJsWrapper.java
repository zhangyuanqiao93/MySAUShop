package cn.edu.sau.eop.processor.backend.support;

import cn.edu.sau.eop.processor.AbstractFacadePagetParser;
import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.processor.FacadePage;
import cn.edu.sau.eop.processor.core.Response;
/**
 * 输出获取积分对话框js的包装器
 */
public class GetPointJsWrapper extends AbstractFacadePagetParser {

	public GetPointJsWrapper(FacadePage page, Request request) {
		super(page, request);
	}

	protected Response parse(Response response) {
		String content  = response.getContent();
		content = content+"<script>$(function(){Eop.Point.init();});</script>";
		response.setContent(content);
		return response;
	}

}
