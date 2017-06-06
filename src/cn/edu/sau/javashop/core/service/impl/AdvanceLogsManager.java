package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.javashop.core.model.AdvanceLogs;
import cn.edu.sau.javashop.core.service.IAdvanceLogsManager;

/**
 * 预存款日志

 */
public class AdvanceLogsManager extends BaseSupport implements
		IAdvanceLogsManager {

	
	public Page pageAdvanceLogs(int pageNo, int pageSize) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		Page page = this.baseDaoSupport.queryForPage("select * from advance_logs where member_id=? order by mtime DESC", pageNo, pageSize, member.getMember_id());
		return page;
	}

	
	public void add(AdvanceLogs advanceLogs) {
		this.baseDaoSupport.insert("advance_logs", advanceLogs);
		
	}

	
	public List listAdvanceLogsByMemberId(int member_id) {
		return this.baseDaoSupport.queryForList("select * from advance_logs where member_id=? order by mtime desc", AdvanceLogs.class, member_id);
	}

}
