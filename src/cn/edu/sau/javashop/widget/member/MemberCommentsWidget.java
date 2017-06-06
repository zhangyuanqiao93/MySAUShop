package cn.edu.sau.javashop.widget.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.ICommentsManager;

/**
 * 我的评论

 *
 */
public class MemberCommentsWidget extends AbstractMemberWidget {
	
	private ICommentsManager commentsManager;

	
	protected void display(Map<String, String> params) {
		HttpServletRequest request =  ThreadContextHolder.getHttpRequest();
		String page  = request.getParameter("page");
		 page = (page == null || page.equals("")) ? "1" : page;
		 this.setPageName("mycomments");
		 int pageSize = 5;
		 
		 Page commentsPage = commentsManager.pageComments_Display(Integer.valueOf(page), pageSize);
		 Long totalCount = commentsPage.getTotalCount();
		 
		 List commentsList = (List)commentsPage.getResult();
		 commentsList = commentsList == null ? new ArrayList() : commentsList;
		 
		 this.putData("totalCount", totalCount);
		 this.putData("pageSize", pageSize);
		 this.putData("page", page);
		 this.putData("commentsList", commentsList);
	}

	
	protected void config(Map<String, String> params) {
		
	}

	public ICommentsManager getCommentsManager() {
		return commentsManager;
	}

	public void setCommentsManager(ICommentsManager commentsManager) {
		this.commentsManager = commentsManager;
	}

}
