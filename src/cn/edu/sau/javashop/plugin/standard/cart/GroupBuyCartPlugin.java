package cn.edu.sau.javashop.plugin.standard.cart;

import java.util.List;

import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.model.support.CartItem;
import cn.edu.sau.javashop.core.plugin.cart.ICartItemFilter;
import cn.edu.sau.javashop.core.service.IGroupBuyManager;
import cn.edu.sau.javashop.core.model.GroupBuy;

/**
 * 团购购物车过滤器
 *
 */
public class GroupBuyCartPlugin extends AutoRegisterPlugin implements
        ICartItemFilter {

	private IGroupBuyManager groupBuyManager;


	@Override
	public void filter(List<CartItem> itemlist, String sessionid) {
		List<GroupBuy> groupBuyList  = groupBuyManager.listEnable();
		for(CartItem item: itemlist){
			for(GroupBuy groupbuy:groupBuyList){
				if( item.getGoods_id().intValue() ==  groupbuy.getGoodsid() ){
					item.setCoupPrice( groupbuy.getPrice() );
				}
			}
		}
		
	}
	

	@Override
	public String getAuthor() {
		
		return "kingapex";
	}

	@Override
	public String getId() {
		
		return "groupBuyCartPlugin";
	}

	@Override
	public String getName() {
		
		return "团购购物车过滤器";
	}

	@Override
	public String getType() {
		
		return "cart";
	}

	@Override
	public String getVersion() {
		
		return "1.0";
	}

	@Override
	public void perform(Object... params) {
		

	}
	@Override
	public void register() {

	}
	public IGroupBuyManager getGroupBuyManager() {
		return groupBuyManager;
	}

	public void setGroupBuyManager(IGroupBuyManager groupBuyManager) {
		this.groupBuyManager = groupBuyManager;
	}

}
