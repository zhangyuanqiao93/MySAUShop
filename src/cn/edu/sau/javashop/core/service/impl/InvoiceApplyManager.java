package cn.edu.sau.javashop.core.service.impl;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.service.IInvoiceApplyManager;
import cn.edu.sau.app.base.core.model.Member;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;
import cn.edu.sau.framework.util.DateUtil;
import cn.edu.sau.javashop.core.model.InvoiceApply;

public class InvoiceApplyManager extends BaseSupport<InvoiceApply> implements IInvoiceApplyManager {


	public void add(InvoiceApply invoiceApply) {
		invoiceApply.setAdd_time( DateUtil.getDatelineLong() );
		invoiceApply.setState(0);
		this.baseDaoSupport.insert("invoice_apply", invoiceApply);
	}


	public void delete(Integer id) {
		this.baseDaoSupport.execute("delete from invoice_apply where id=?", id);
	}


	public void edit(InvoiceApply invoiceApply) {
		this.baseDaoSupport.update("invoice_apply", invoiceApply, "id="+invoiceApply.getId());
	}


	public InvoiceApply get(Integer id) {
		
		return this.daoSupport.queryForObject("select i.*,o.sn ordersn,o.order_amount amount from "+this.getTableName("invoice_apply")+" i,"+ this.getTableName("order")+ " o where o.order_id=i.orderid i.id =?", InvoiceApply.class, id);
	}


	public Page list(int pageNo, int pageSize) {
		
		return this.daoSupport.queryForPage("select i.*,o.sn ordersn,o.order_amount amount from  "+this.getTableName("invoice_apply")+" i,"+ this.getTableName("order")+ " o  order by add_time desc", pageNo, pageSize,InvoiceApply.class);
	}


	public List listMember() {
		Member member = UserServiceFactory.getUserService().getCurrentMember();
		
		return this.daoSupport.queryForList("select i.*,o.sn ordersn,o.order_amount amount from  "+this.getTableName("invoice_apply")+" i,"+ this.getTableName("order")+ " o where o.member_id=? order by add_time desc",  InvoiceApply.class,member.getMember_id());
	}


	public void updateState(Integer id, int state) {
		this.baseDaoSupport.execute("update invoice_apply set state=? where id=?", state,id);
	}


	public void refuse(Integer id, String reson) {
		this.baseDaoSupport.execute("update invoice_apply set state=?,refuse_reson=? where id=?", 2,reson,id);
	}

}
