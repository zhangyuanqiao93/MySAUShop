package cn.edu.sau.eop.processor.facade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.processor.IPageParamJsonGetter;
import cn.edu.sau.eop.processor.IPagePaser;
import cn.edu.sau.eop.processor.IPageUpdater;
import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.eop.processor.core.StringResponse;
import cn.edu.sau.eop.processor.facade.support.PageEditModeWrapper;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.context.spring.SpringContextHolder;
import cn.edu.sau.framework.util.RequestUtil;

/**
 * 页面处理器
 *
 */
public class FacadePageProcessor implements Processor {

	/**
	 * 
	 *响应页面的三种操作,通过参数_method来识别，并分别通过三个接口来完成操作： 
	 * <li>GET:解析页面： {@link IPagePaser}</li>
	 * <li>PUT:更新页面 ：{@link IPageUpdater}</li>
	 * <li>PARAMJSON:获取页面挂件参数json串cn.sau.edu.eop.api.facade.IPageParamJsonGetter</li>
	 * </br>
	 * 页面的url会被读取并做为解析实际页面文件地址的依据
	 * @param mode
	 * @param httpResponse
	 * @param httpRequest
	 */
	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {

		String method = RequestUtil.getRequestMethod(httpRequest);
		String uri = RequestUtil.getRequestUrl(httpRequest);
		Response response = new StringResponse();

		// 解析页面
		if (method.equals("GET")) {
			IPagePaser paser = SpringContextHolder.getBean("facadePagePaser");
			if (UserServiceFactory.getUserService().isUserLoggedIn()
					&& httpRequest.getParameter("mode") != null) {
				paser = new PageEditModeWrapper(paser);
			}

			String content = paser.pase(uri);
			response.setContent(content);

		}

		// 更新页面
		if (method.equals("PUT")) {
			String params = httpRequest.getParameter("widgetParams");
			String content = httpRequest.getParameter("bodyHtml");
			IPageUpdater pageUpdater = SpringContextHolder
					.getBean("facadePageUpdater");
			pageUpdater.update(uri, content, params);
			response.setContent("{'state':0,'message':'页面保存成功'}");
		}

		// 获取参数json
		if (method.equals("PARAMJSON")) {
			IPageParamJsonGetter pageParamJsonGetter = SpringContextHolder
					.getBean("pageParamJsonGetter");
			String json = pageParamJsonGetter.getJson(uri);
			response.setContent(json);
		}

		return response;
	}

}