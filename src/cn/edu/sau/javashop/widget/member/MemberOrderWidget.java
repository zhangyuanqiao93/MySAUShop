package cn.edu.sau.javashop.widget.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.IMemberOrderManager;

/**
 * 我的订单列表挂件

 *
 */
public class MemberOrderWidget extends AbstractMemberWidget {
	
	private IMemberOrderManager memberOrderManager;

	
	protected void display(Map<String, String> params) {
		 HttpServletRequest request =  ThreadContextHolder.getHttpRequest();
		 String page  = request.getParameter("page");
		 page = (page == null || page.equals("")) ? "1" : page;
		 this.setPageName("myorder");
		 int pageSize = 20;
		 
		 Page ordersPage = memberOrderManager.pageOrders(Integer.valueOf(page), pageSize);
		 Long totalCount = ordersPage.getTotalCount();
		 
		 List ordersList = (List)ordersPage.getResult();
		 ordersList = ordersList == null ? new ArrayList() : ordersList;
		 
		 this.putData("totalCount", totalCount);
		 this.putData("pageSize", pageSize);
		 this.putData("page", page);
		 this.putData("ordersList", ordersList);
	}

	
	protected void config(Map<String, String> params) {
		
	}

	public IMemberOrderManager getMemberOrderManager() {
		return memberOrderManager;
	}

	public void setMemberOrderManager(IMemberOrderManager memberOrderManager) {
		this.memberOrderManager = memberOrderManager;
	}

}
