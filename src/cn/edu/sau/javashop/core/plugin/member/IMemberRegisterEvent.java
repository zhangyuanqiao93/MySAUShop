package cn.edu.sau.javashop.core.plugin.member;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.app.base.core.model.Member;

/**
 * 会员注册事件
 *
 */
public interface IMemberRegisterEvent {
	
	/**
	 * 会员注册时激发此事件
	 * @param member
	 */
	@Transactional(propagation = Propagation.REQUIRED)  
	public void onRegister(Member member);
	
	
	
}