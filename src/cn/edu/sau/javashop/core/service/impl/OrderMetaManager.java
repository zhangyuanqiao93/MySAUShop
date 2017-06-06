package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.javashop.core.model.OrderMeta;
import cn.edu.sau.javashop.core.service.IOrderMetaManager;

public class OrderMetaManager extends BaseSupport<OrderMeta> implements
        IOrderMetaManager {

	@Override
	public void add(OrderMeta orderMeta) {
		this.baseDaoSupport.insert("order_meta", orderMeta) ;
	}

	@Override
	public List<OrderMeta> list(int orderid) {
		 
		return this.baseDaoSupport.queryForList("select * from order_meta where orderid=?", OrderMeta.class,orderid);
	}

}
