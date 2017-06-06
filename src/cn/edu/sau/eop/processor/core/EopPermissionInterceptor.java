package cn.edu.sau.eop.processor.core;

import cn.edu.sau.eop.sdk.context.EopContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * eop权限拦截器
 */
public class EopPermissionInterceptor implements Interceptor {

	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation inv) throws Exception {
		
		Integer userid  = EopContext.getContext().getCurrentSite().getUserid();
		if(userid.intValue() !=1){
			return "error";
		}
		
		String result = inv.invoke();
		return result;
	}

}
