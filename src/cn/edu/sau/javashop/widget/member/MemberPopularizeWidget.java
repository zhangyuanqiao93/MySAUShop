package cn.edu.sau.javashop.widget.member;

import java.util.Map;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/**
 * 会员推广连接

 */
public class MemberPopularizeWidget extends AbstractMemberWidget {

	@Override
	protected void config(Map<String, String> params) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void display(Map<String, String> params) {
		 Member member = UserServiceFactory.getUserService().getCurrentMember();
		 this.putData("memberid",member.getMember_id());
	}

}
