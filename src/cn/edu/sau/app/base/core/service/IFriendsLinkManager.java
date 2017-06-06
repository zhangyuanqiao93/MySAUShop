package cn.edu.sau.app.base.core.service;

import java.util.List;

import cn.edu.sau.app.base.core.model.FriendsLink;

/**
 * 友情链接
 * 

 */
public interface IFriendsLinkManager {
	
	public FriendsLink get(int link_id);
	
	public List listLink();
	
	public void add(FriendsLink friendsLink);
	
	public void delete(String id);
	
	public void update(FriendsLink friendsLink);

}
