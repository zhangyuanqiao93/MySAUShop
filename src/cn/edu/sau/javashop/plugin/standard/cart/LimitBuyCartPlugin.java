package cn.edu.sau.javashop.plugin.standard.cart;

import java.util.List;
import java.util.Map;

import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.model.support.CartItem;
import cn.edu.sau.javashop.core.plugin.cart.ICartItemFilter;
import cn.edu.sau.javashop.core.service.ILimitBuyManager;

public class LimitBuyCartPlugin extends AutoRegisterPlugin implements
		ICartItemFilter {
	
	private ILimitBuyManager limitBuyManager;
	@Override
	public void register() {
		

	}

	@Override
	public void filter(List<CartItem> itemlist, String sessionid) {
		List<Map> lmtList  = limitBuyManager.listEnableGoods();
		for(CartItem item: itemlist){
			for(Map lmt:lmtList){
				int goodsid  = Integer.valueOf( lmt.get("goods_id").toString() );
				if( item.getGoods_id().intValue() == goodsid ){
					double price  = Double.valueOf( lmt.get("limitprice").toString() );
					item.setCoupPrice( price);
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
		
		return "limitBuyCartPlugin";
	}

	@Override
	public String getName() {
		
		return "限时购买购物车插件";
	}

	@Override
	public String getType() {
		
		return "goods";
	}

	@Override
	public String getVersion() {
		
		return "1.0";
	}

	@Override
	public void perform(Object... params) {
		

	}

	public ILimitBuyManager getLimitBuyManager() {
		return limitBuyManager;
	}

	public void setLimitBuyManager(ILimitBuyManager limitBuyManager) {
		this.limitBuyManager = limitBuyManager;
	}

}
