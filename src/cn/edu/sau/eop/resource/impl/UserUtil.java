package cn.edu.sau.eop.resource.impl;

import cn.edu.sau.eop.processor.core.EopException;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/**

 */
public final class UserUtil {

	private static IUserService userService;
	
	public static void validUser(Integer userid) {
		
		userService = UserServiceFactory.getUserService();
		
		if (!userid.equals(userService.getCurrentUserId())) {
			throw new EopException("非法操作");
		}
		
	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

}
