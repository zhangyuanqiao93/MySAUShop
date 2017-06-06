package cn.edu.sau.javashop.core.action.facade;

import cn.edu.sau.framework.action.WWAction;
import cn.edu.sau.javashop.core.service.IFavoriteManager;
import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/**
 * 商品收藏action

 */
public class FavoriteAction extends WWAction {
	
	private IFavoriteManager favoriteManager;
	private Integer goodsid;
	
	public String execute(){
		Member member  = UserServiceFactory.getUserService().getCurrentMember();
		if(member!=null){
			this.favoriteManager.add(goodsid);
			this.json="{result:1,message:'收藏成功'}";
		}else{
			this.json="{result:0,message:'您尚未登陆，不能使用收藏功能'}";
		}
		return this.JSON_MESSAGE;
	}
	public IFavoriteManager getFavoriteManager() {
		return favoriteManager;
	}
	public void setFavoriteManager(IFavoriteManager favoriteManager) {
		this.favoriteManager = favoriteManager;
	}
	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}
	
	
}
