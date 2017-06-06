package cn.edu.sau.javashop.widget.member;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

/**
 * 会员中心挂件基类

 */
public abstract class AbstractMemberWidget extends AbstractWidget {
	
	
	/**
	 *会员中心挂件全部不缓存
	 */
	public boolean  cacheAble(){
		return false;
	}
	

	private boolean showMenu= true; 
	

	
	protected void showMenu(boolean show){
		showMenu = show;
	}
	
	public boolean getShowMenu(){
		return this.showMenu;
	}
	
	protected Member getCurrentMember(){
		Member member = UserServiceFactory.getUserService().getCurrentMember();
		return member;
	}
}
