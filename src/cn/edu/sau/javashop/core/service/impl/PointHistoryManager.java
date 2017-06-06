package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.PointHistory;
import cn.edu.sau.javashop.core.service.IPointHistoryManager;

/**
 * 会员积分日志

 */
public class PointHistoryManager extends BaseSupport implements
        IPointHistoryManager {

	
	public Page pagePointHistory(int pageNo, int pageSize, int pointType) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		String sql = "select * from point_history where member_id = ? and point_type=? order by time desc";
		Page webpage = this.baseDaoSupport.queryForPage(sql, pageNo, pageSize,
				member.getMember_id(),pointType);
		return webpage;
	}

	
	public Long getConsumePoint(int pointType) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		Long result = this.baseDaoSupport
				.queryForLong(
						"select SUM(point) from point_history where  member_id = ?  and  type=0  and point_type=?",
						member.getMember_id(),pointType);
		return result;
	}

	
	public Long getGainedPoint(int pointType) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		Long result = this.baseDaoSupport
				.queryForLong(
						"select SUM(point) from point_history where    member_id = ? and  type=1  and point_type=?",
						member.getMember_id(),pointType);
		return result;
	}

	
	public void addPointHistory(PointHistory pointHistory) {
		this.baseDaoSupport.insert("point_history", pointHistory);
	}

	
	public List listPointHistory(int member_id) {
		String sql = "select * from point_history where member_id = ? order by time desc";
		List list = this.baseDaoSupport.queryForList(sql,PointHistory.class, member_id);
		return list;
	}

}
