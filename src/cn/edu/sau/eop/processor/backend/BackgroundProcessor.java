package cn.edu.sau.eop.processor.backend;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.backend.support.BackPageGetter;
import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.ConnectType;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.processor.FacadePage;
import cn.edu.sau.eop.processor.backend.support.MenuJsonGetter;
import cn.edu.sau.eop.processor.core.LocalRequest;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/**
 * 后台页面解析器
 */
public class BackgroundProcessor implements Processor {
 
	/**
	 * 
	 * @param httpResponse
	 * @param httpRequest
	 */
	public Response process(int model,HttpServletResponse httpResponse, HttpServletRequest httpRequest){
		String uri = httpRequest.getServletPath(); 
		
		
		//用户身份校验
		 if( ! uri.startsWith("/admin/login")
			&& ! uri.startsWith("/admin/index.jsp") 
			&& !uri.equals("/admin/")
			&& !uri.equals("/admin")
			){
			 IUserService userService = UserServiceFactory.getUserService();
			 if(!userService.isUserLoggedIn()){
				 	List<String> msgs = new ArrayList<String>();
				 	Map<String ,String> urls = new HashMap<String,String>();
				 	msgs.add("您尚未登陆或登陆已经超时，请重新登录。");
				 	String ctx = httpRequest.getContextPath();
				 	urls.put("点进这里进入登录页面", ctx+"/admin/");
				 	httpRequest.setAttribute("msgs", msgs);
				 	httpRequest.setAttribute("urls", urls);
					httpRequest.setAttribute("target", "_top");
//					httpRequest.setAttribute("message", "您尚未登陆或登陆已经超时，请重新登录。");
//					httpRequest.setAttribute("link", "index.jsp");
//					httpRequest.setAttribute("linkmessage", "点进这里进入登录页面");		
					Request request = new LocalRequest();
					Response response = request.execute("/admin/message.jsp", httpResponse,
							httpRequest);
					return response;
			 }
		 }
		
		Processor processor  =null;
		
		EopSite site  = EopContext.getContext().getCurrentSite();
 
		model = ConnectType.local;
		FacadePage page = new FacadePage(site);
 
		page.setUri(uri);
		
		if(uri.startsWith("/admin/menu.do")){
			processor = new MenuJsonGetter(page);
		}else if( uri.startsWith("/admin/login.do") ){
			processor = new LoginProcessor();
		}else if( uri.startsWith("/admin/logout.do") ) {
			processor = new LogoutProcessor();
		}else if(uri.startsWith("/admin/plugin")){
			processor = new AjaxPluginProcessor();
		}else{
			processor = new BackPageGetter(page); //负责显示后台内容界面
		}
 		
		Response response = processor.process(model, httpResponse, httpRequest);		
		return response;
	}
}
