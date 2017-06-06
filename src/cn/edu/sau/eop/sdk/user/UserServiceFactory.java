package cn.edu.sau.eop.sdk.user;

import cn.edu.sau.eop.sdk.user.impl.UserServiceImpl;

/**
 * 用户服务工厂，返回服务服务

 *
 */
public final class UserServiceFactory {
	public static int  isTest= 0;
	private static IUserService userService;
	public static void set(IUserService _userService){
		 userService =_userService;
	}
	
	public static IUserService getUserService(){
		if(userService!=null)
		 return userService;
		 
		 return new UserServiceImpl();
	 
	}

	 
	
	
}



