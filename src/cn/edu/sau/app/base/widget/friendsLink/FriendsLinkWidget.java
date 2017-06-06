package cn.edu.sau.app.base.widget.friendsLink;

import java.util.List;
import java.util.Map;

import cn.edu.sau.app.base.core.service.IFriendsLinkManager;
import cn.edu.sau.app.base.widget.nav.Nav;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

public class FriendsLinkWidget extends AbstractWidget {
	
	private IFriendsLinkManager friendsLinkManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("friendsLink");
 
		List listLink = this.friendsLinkManager.listLink();
		this.putData("listLink", listLink);
	 
		Nav nav = new Nav();
		nav.setTitle("友情链接 ");
		this.putNav(nav);
	}

	public IFriendsLinkManager getFriendsLinkManager() {
		return friendsLinkManager;
	}

	public void setFriendsLinkManager(IFriendsLinkManager friendsLinkManager) {
		this.friendsLinkManager = friendsLinkManager;
	}

}
