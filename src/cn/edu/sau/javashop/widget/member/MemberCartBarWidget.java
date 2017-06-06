package cn.edu.sau.javashop.widget.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.CurrencyUtil;
import cn.edu.sau.javashop.core.service.ICartManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.javashop.core.service.GoodsPicDirectiveModel;

/**
 * 会员信息面板挂件

 */
public class MemberCartBarWidget extends AbstractWidget {

	private ICartManager cartManager;
	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		
		Member member = UserServiceFactory.getUserService().getCurrentMember();
		if(member==null){
			this.putData("isLogin", false);
		}else{
			this.putData("isLogin", true);
		}
		
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String sessionid =request.getSession().getId();
		
		String ajax = request.getParameter("ajax");
		
		if(("yes").equals(ajax )){
			List goodsList  = cartManager.listGoods( sessionid );
			List pgkList = cartManager.listPgk(sessionid);
			List giftList  = cartManager.listGift(sessionid);
			
			int goodsCount = goodsList== null?0:goodsList.size();
			int pgkCount = pgkList==null?0:pgkList.size();
			int giftCount = giftList==null?0:giftList.size();
			
			Double goodsTotal  =cartManager.countGoodsTotal( sessionid );
			Double pgkTotal = cartManager.countPgkTotal(sessionid);
								  
			this.putData("goodsList", goodsList);
			this.putData("pgkList", pgkList);
			this.putData("giftList", giftList);
			
			this.putData("count", goodsCount+ giftCount+pgkCount);
			this.putData("goodsCount", goodsCount);
			this.putData("pgkCount", pgkCount);
			this.putData("giftCount", giftCount);
//			this.putData("total", pgkTotal+goodsTotal);
			this.putData("total", CurrencyUtil.add(pgkTotal,goodsTotal));
			this.putData("GoodsPic",new  GoodsPicDirectiveModel());
			this.setPageName("bar_Ajax");
			
		}else{
			Double goodsTotal  =cartManager.countGoodsTotal( sessionid );
			Double pgkTotal = cartManager.countPgkTotal(sessionid);
			this.putData("total", CurrencyUtil.add(pgkTotal,goodsTotal));
			int count = this.cartManager.countItemNum(sessionid);
			this.putData("count", count);
		}
	}

	public ICartManager getCartManager() {
		return cartManager;
	}

	public void setCartManager(ICartManager cartManager) {
		this.cartManager = cartManager;
	}
	
	

}
