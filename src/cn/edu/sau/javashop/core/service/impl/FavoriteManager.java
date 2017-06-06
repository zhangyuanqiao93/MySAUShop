package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.user.IUserService;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.Favorite;
import cn.edu.sau.javashop.core.service.IFavoriteManager;

/**
 * 我的收藏
 * 

 */
public class FavoriteManager extends BaseSupport implements IFavoriteManager {

	
	public Page list(int pageNo, int pageSize) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		String sql = "select g.*, f.favorite_id from " + this.getTableName("favorite")
				+ " f left join " + this.getTableName("goods")
				+ " g on g.goods_id = f.goods_id";
		sql += " where f.member_id = ?";
		Page page = this.daoSupport.queryForPage(sql, pageNo, pageSize, member
				.getMember_id());
		return page;
	}

	
	public void delete(int favorite_id) {
		this.baseDaoSupport.execute("delete from favorite where favorite_id = ?", favorite_id);
	}

	
	public void add(Integer goodsid) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		Favorite favorite = new Favorite();
		favorite.setGoods_id(goodsid);
		favorite.setMember_id(member.getMember_id());
		this.baseDaoSupport.insert("favorite", favorite);
	}

	
	public List list( ) {
		IUserService userService = UserServiceFactory.getUserService();
		Member member = userService.getCurrentMember();
		
		return this.baseDaoSupport.queryForList("select * from favorite where member_id=?", Favorite.class, member.getMember_id());
	}

}
