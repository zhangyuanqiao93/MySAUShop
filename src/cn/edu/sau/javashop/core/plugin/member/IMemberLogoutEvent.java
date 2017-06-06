package cn.edu.sau.javashop.core.plugin.member;

import cn.edu.sau.app.base.core.model.Member;

/**
 * 会员注销事件

 *
 */
public interface IMemberLogoutEvent {
	 
	public void onLogout(Member member);
	
	
}
