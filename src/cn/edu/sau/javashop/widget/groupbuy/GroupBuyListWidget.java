package cn.edu.sau.javashop.widget.groupbuy;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.javashop.core.service.IGroupBuyManager;

/**
 * 团购列表挂件

 *
 */
public class GroupBuyListWidget extends AbstractWidget {
	private IGroupBuyManager groupBuyManager;
	@Override
	protected void config(Map<String, String> params) {

	}

	@Override
	protected void display(Map<String, String> params) {
		List list  = this.groupBuyManager.listEnable();
		this.putData("groupBuyList", list);
	}

	public final IGroupBuyManager getGroupBuyManager() {
		return groupBuyManager;
	}

	public final void setGroupBuyManager(IGroupBuyManager groupBuyManager) {
		this.groupBuyManager = groupBuyManager;
	}

}
