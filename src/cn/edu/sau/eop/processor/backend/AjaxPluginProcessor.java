package cn.edu.sau.eop.processor.backend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.core.StringResponse;
import cn.edu.sau.framework.plugin.IAjaxExecuteEnable;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 * 插件异步执行器
 *
 */
public class AjaxPluginProcessor implements Processor {

	@Override
	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {
		
		Response response  = new StringResponse();
		String beanid = httpRequest.getParameter("beanid");
		Object plugin = SpringContextHolder.getBean(beanid);
		
		/**
		 * 有效性验验
		 */
		if(plugin==null){
			response.setContent("error:plugin is null");
			return response;
		}
		
		if(! (plugin instanceof IAjaxExecuteEnable)){
			response.setContent("error:plugin is not a IAjaxExecuteEnable");
			return  response;
		}
		
		IAjaxExecuteEnable ajaxPlugin = (IAjaxExecuteEnable)plugin;
		
		String content = ajaxPlugin.execute();		
		response.setContent(content);
		return response;
	}

}
