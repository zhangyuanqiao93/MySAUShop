package cn.edu.sau.app.base.core.service.impl;

import java.util.List;

import cn.edu.sau.app.base.core.model.FriendsLinkMapper;
import cn.edu.sau.app.base.core.service.IFriendsLinkManager;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.app.base.core.model.FriendsLink;
import cn.edu.sau.eop.sdk.utils.UploadUtil;

/**
 * 友情链接
 *
 */
public class FriendsLinkManager extends BaseSupport<FriendsLink> implements
        IFriendsLinkManager {

	
	public void add(FriendsLink friendsLink) {
		this.baseDaoSupport.insert("friends_link", friendsLink);

	}

	
	public void delete(String id) {
		this.baseDaoSupport.execute("delete from friends_link where link_id in (" + id + ")");

	}

	
	public List listLink() {
		
		return this.baseDaoSupport.queryForList("select * from friends_link order by sort",new FriendsLinkMapper());
	}

	
	public void update(FriendsLink friendsLink) {
		this.baseDaoSupport.update("friends_link", friendsLink, "link_id = " + friendsLink.getLink_id());

	}

	
	public FriendsLink get(int link_id) {
		FriendsLink friendsLink = this.baseDaoSupport.queryForObject("select * from friends_link where link_id = ?", FriendsLink.class, link_id);
		String logo  = friendsLink.getLogo();
		if(logo!=null) {
			logo  =UploadUtil.replacePath(logo);
			friendsLink.setLogo(logo);
		}
		return  friendsLink;
	}

}
