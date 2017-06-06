package cn.edu.sau.javashop.widget.member;

import java.util.Map;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.javashop.core.service.IWelcomeInfoManager;

/**
 * 会员中心首页

 *
 */
public class MemberIndex extends AbstractMemberWidget {
	
	private IWelcomeInfoManager welcomeInfoManager;

	
	protected void display(Map<String, String> params) {
		 this.setPageName("index");
		 IUserService userService = UserServiceFactory.getUserService();
		 Member member = userService.getCurrentMember();
		 Map wel = welcomeInfoManager.mapWelcomInfo();
		 
		 this.putData("member", member);
		 this.putData("wel", wel);
	}

	
	protected void config(Map<String, String> params) {
		
	}

	public IWelcomeInfoManager getWelcomeInfoManager() {
		return welcomeInfoManager;
	}

	public void setWelcomeInfoManager(IWelcomeInfoManager welcomeInfoManager) {
		this.welcomeInfoManager = welcomeInfoManager;
	}
	

}
