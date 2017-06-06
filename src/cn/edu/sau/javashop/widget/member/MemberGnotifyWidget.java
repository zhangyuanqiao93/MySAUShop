package cn.edu.sau.javashop.widget.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.GoodsPicDirectiveModel;
import cn.edu.sau.javashop.core.service.IGnotifyManager;

/**
 * 缺货登记

 *
 */
public class MemberGnotifyWidget extends AbstractMemberWidget {

	private IGnotifyManager gnotifyManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("member_gnotify");
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String action = request.getParameter("action");
		action = action == null ? "" : action;
		if (action.equals("")) {
			String page = request.getParameter("page");
			page = page == null ? "1" : page;
			int pageSize = 20;
			Page gnotifyPage = gnotifyManager.pageGnotify(
					Integer.valueOf(page), pageSize);
			Long totalCount = gnotifyPage.getTotalCount();
			Long pageCount = gnotifyPage.getTotalPageCount();
			List gnotifyList = (List) gnotifyPage.getResult();
			gnotifyList = gnotifyList == null ? new ArrayList() : gnotifyList;
			this.putData("totalCount", totalCount);
			this.putData("pageSize", pageSize);
			this.putData("page", page);
			this.putData("GoodsPic", new GoodsPicDirectiveModel());
			this.putData("gnotifyList", gnotifyList);
			this.putData("pageCount", pageCount);
		}else if(action.equals("delete")){
			this.showMenu(false);
			String gnotify_id = request.getParameter("gnotify_id");
			try{
				gnotifyManager.deleteGnotify(Integer.valueOf(gnotify_id));
				
				this.showSuccess("删除成功","缺货登记", "member_gnotify.html");
			}catch(Exception e){
				if(this.logger.isDebugEnabled()){
					logger.error(e.getStackTrace());
				}
				this.showError("删除失败", "缺货登记", "member_favorite.html");
			}
		}else if(action.equals("add")){
			this.add();
		}
	}
	
 
	private void add(){
		
		try{
			HttpServletRequest request = ThreadContextHolder.getHttpRequest();
			String productid= request.getParameter("goodsid");
			if(productid==null || "".equals(productid)){
				this.showErrorJson("商品id不能为空");
			}
			Member member  = UserServiceFactory.getUserService().getCurrentMember();
		 
			if(member!=null){
				this.gnotifyManager.addGnotify(Integer.valueOf(productid));
				this.showSuccessJson("登记成功");
			}else{
				this.showErrorJson("您尚未登陆，不能进行缺货登记");
			}
		}catch(RuntimeException e){
			this.logger.error("缺货登记发生错误",e);
			this.showErrorJson(e.getMessage());
		}
	}
 

	public IGnotifyManager getGnotifyManager() {
		return gnotifyManager;
	}

	public void setGnotifyManager(IGnotifyManager gnotifyManager) {
		this.gnotifyManager = gnotifyManager;
	}

}
