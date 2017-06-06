package cn.edu.sau.javashop.widget.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.core.service.ISettingService;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IMemberCouponsManager;

/**
 * 我的优惠卷

 *
 */
public class MemberCouponsMemberWidget extends AbstractMemberWidget {
	
	private ISettingService settingService;
	private IMemberCouponsManager memberCouponsManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("member_coupons");
		String mc_use_times = settingService.getSetting("coupons", "coupon.mc.use_times");
		mc_use_times = mc_use_times == null ? "1" : mc_use_times;
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String page = request.getParameter("page");
		page = (page == null || page.equals("")) ? "1" : page;
		int pageSize = 20;
		Page pageMemberCoupons = memberCouponsManager.pageMemberCoupons(Integer.valueOf(page), pageSize);
		Long pageCount = pageMemberCoupons.getTotalPageCount();
		List listMemberCoupons = (List)pageMemberCoupons.getResult();
		listMemberCoupons = listMemberCoupons == null ? new ArrayList() : listMemberCoupons;
		this.putData("listMemberCoupons", listMemberCoupons);
		this.putData("mc_use_times", mc_use_times);
		this.putData("pageSize", pageSize);
		this.putData("pageCount", pageCount);
		this.putData("page", page);
	}

	public ISettingService getSettingService() {
		return settingService;
	}

	public void setSettingService(ISettingService settingService) {
		this.settingService = settingService;
	}

	public IMemberCouponsManager getMemberCouponsManager() {
		return memberCouponsManager;
	}

	public void setMemberCouponsManager(IMemberCouponsManager memberCouponsManager) {
		this.memberCouponsManager = memberCouponsManager;
	}

}
