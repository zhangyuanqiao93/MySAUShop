package cn.edu.sau.javashop.widget.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IFavoriteManager;
import cn.edu.sau.javashop.core.service.GoodsPicDirectiveModel;

/**
 * 我的收藏

 *
 */
public class MemberFavoriteWidget extends AbstractMemberWidget {
	
	private IFavoriteManager favoriteManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String action = request.getParameter("action");
		action = action == null ? "" : action;
		if(action.equals("")){
		this.setPageName("member_favorite");
		String page = request.getParameter("page");
		page = page == null ? "1" : page;
		int pageSize = 20;
		Page favoritePage = favoriteManager.list(Integer.valueOf(page), pageSize);
		Long pageCount = favoritePage.getTotalPageCount();
		List favoriteList = (List)favoritePage.getResult();
		favoriteList = favoriteList == null ? new ArrayList() : favoriteList;
		this.putData("pageSize", pageSize);
		this.putData("page", page);
		this.putData("favoriteList", favoriteList);
		this.putData("pageCount", pageCount);
		this.putData("totalCount",favoritePage.getTotalCount());
		this.putData("GoodsPic", new GoodsPicDirectiveModel());
		}else if(action.equals("delete")){
			this.showMenu(false);
			String favorite_id = request.getParameter("favorite_id");
			try{
				this.favoriteManager.delete(Integer.valueOf(favorite_id));
				this.showSuccess("删除成功","商品收藏", "member_favorite.html");
			}catch(Exception e){
				if(this.logger.isDebugEnabled()){
					logger.error(e.getStackTrace());
				}
				this.showError("删除失败", "商品收藏", "member_favorite.html");
			}
		}
	}

	public IFavoriteManager getFavoriteManager() {
		return favoriteManager;
	}

	public void setFavoriteManager(IFavoriteManager favoriteManager) {
		this.favoriteManager = favoriteManager;
	}

}
