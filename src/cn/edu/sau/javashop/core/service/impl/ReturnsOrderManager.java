package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.framework.util.DateUtil;
import cn.edu.sau.javashop.core.service.IOrderFlowManager;
import cn.edu.sau.javashop.core.service.IOrderManager;
import cn.edu.sau.javashop.core.service.IReturnsOrderManager;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.javashop.core.model.ReturnsOrder;

/**
 * 退货管理

 */
public class ReturnsOrderManager extends BaseSupport<ReturnsOrder> implements IReturnsOrderManager {

	
	private IOrderFlowManager orderFlowManager ;
	private IOrderManager orderManager;
	
	@Transactional(propagation = Propagation.REQUIRED)
	public void add(ReturnsOrder returnsOrder,Integer[] specids) {
		
		Member member = UserServiceFactory.getUserService().getCurrentMember();
		this.orderFlowManager.applyReturns(returnsOrder.getOrderid(),returnsOrder.getState(), specids);
		
		returnsOrder.setMemberid(member.getMember_id());
		returnsOrder.setState(0);
		returnsOrder.setAdd_time(DateUtil.getDatelineLong());
		this.baseDaoSupport.insert("returns_order", returnsOrder);
	}

	
	public void delete(Integer id) {
		this.baseDaoSupport.execute("delete from returns_order where id=?", id);
	}

	
	public ReturnsOrder get(Integer id) {
		ReturnsOrder order =baseDaoSupport.queryForObject("select * from returns_order where id=?", ReturnsOrder.class, id);
		
		List itemList  = orderManager.listGoodsItems(order.getOrderid());
		order.setItemList(itemList);
		return order;
	}

	
	public Page listAll(int pageNo, int pageSize) {
		return this.baseDaoSupport.queryForPage("select * from returns_order order by add_time desc",pageNo, pageSize,  ReturnsOrder.class);
	}

	
	public List<ReturnsOrder> listMemberOrder() {
		Member member  = UserServiceFactory.getUserService().getCurrentMember();
		
		return this.baseDaoSupport.queryForList("select * from returns_order where memberid =? ", ReturnsOrder.class, member.getMember_id());
	}

	
	public void updateState(Integer id, int state) {
		this.baseDaoSupport.execute("update returns_order set state=? where id=?", state,id);
	}

	/*
	 * (non-Javadoc)
	 * @see IReturnsOrderManager#refuse(java.lang.Integer, java.lang.String)
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void refuse(Integer id, String reson) {
		ReturnsOrder order  =this.get(id);
		orderFlowManager.refuseRorC(order.getOrderid());
		this.baseDaoSupport.execute("update returns_order set state=?,refuse_reson=? where id=?", 2,reson,id);
	}
	
	
	


	public IOrderFlowManager getOrderFlowManager() {
		return orderFlowManager;
	}


	public void setOrderFlowManager(IOrderFlowManager orderFlowManager) {
		this.orderFlowManager = orderFlowManager;
	}


	public IOrderManager getOrderManager() {
		return orderManager;
	}


	public void setOrderManager(IOrderManager orderManager) {
		this.orderManager = orderManager;
	}


}
