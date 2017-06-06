package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.app.base.core.model.MemberAddress;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.javashop.core.service.IMemberAddressManager;

/**
 * 会员中心-收货地址

 */
public class MemberAddressManager extends BaseSupport<MemberAddress> implements
		IMemberAddressManager {

	
	public void addAddress(MemberAddress address) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		address.setMember_id(member.getMember_id());
		this.baseDaoSupport.insert("member_address", address);
	}

	
	public void deleteAddress(int addr_id) {
		this.baseDaoSupport.execute(
				"delete from member_address where addr_id = ?", addr_id);
	}

	
	public MemberAddress getAddress(int addr_id) {
		MemberAddress address = this.baseDaoSupport.queryForObject(
				"select * from member_address where addr_id = ?",
				MemberAddress.class, addr_id);
		return address;
	}

	
	public List listAddress() {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		List list = this.baseDaoSupport.queryForList(
				"select * from member_address where member_id = ?", member
						.getMember_id());
		return list;
	}

	
	public void updateAddress(MemberAddress address) {
		this.baseDaoSupport.update("member_address", address, "addr_id="
				+ address.getAddr_id());
	}

}
