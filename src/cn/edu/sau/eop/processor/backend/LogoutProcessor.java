package cn.edu.sau.eop.processor.backend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.sdk.user.UserContext;
import cn.edu.sau.framework.context.webcontext.WebSessionContext;
import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.core.Response;
import cn.edu.sau.eop.processor.core.StringResponse;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

public class LogoutProcessor implements Processor {

	
	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {
		
		WebSessionContext<UserContext> sessonContext = ThreadContextHolder.getSessionContext();
		Response response= new StringResponse();
		sessonContext.removeAttribute(UserContext.CONTEXT_KEY);
		response.setContent("<script>location.href='index.jsp'</script>");
		return response;
	}
 
}
