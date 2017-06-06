package cn.edu.sau.eop.processor.facade.support;

import cn.edu.sau.eop.processor.AbstractFacadePageWrapper;
import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.processor.FacadePage;
import cn.edu.sau.eop.processor.core.Response;

/**
 */
public class WidgetToolWrapper extends AbstractFacadePageWrapper {

	private static final String toolsElement = "<div id=\"widget_setting\"></div><form id=\"pageForm\" method=\"POST\"><input type=\"hidden\" id=\"bodyHtml\" name=\"bodyHtml\"> </form></body>";

	/**
	 * 
	 * @param page
	 */
	public WidgetToolWrapper(FacadePage page, Request request) {
		super(page, request);
	}

	protected Response wrap(Response response) {
		String content = response.getContent();
		content = content.replaceAll("</body>", toolsElement);
		content = content.replaceAll("</BODY>", toolsElement);

		response.setContent(content);
		return response;
	}

}