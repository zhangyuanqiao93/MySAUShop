package cn.edu.sau.javashop.widget.member;

import java.util.Map;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

/**
 * 判断会员是否登陆的挂件

 *
 */
public class MemberIsLoginWidget extends AbstractWidget {

	@Override
	protected void config(Map<String, String> params) {
		
	}

	@Override
	protected void display(Map<String, String> params) {
		Member member = UserServiceFactory.getUserService().getCurrentMember();
		if(member==null){
			this.putData("isLogin", false);
		}else{
			this.putData("isLogin", true);
		}
	}

}
