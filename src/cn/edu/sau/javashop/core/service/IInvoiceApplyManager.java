package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.InvoiceApply;

/**
 * 索取发票管理
 * @author zyq
 *
 */
public interface IInvoiceApplyManager {
	
	public void add(InvoiceApply invoiceApply);
	
	public void edit(InvoiceApply invoiceApply);
	
	public void updateState(Integer id, int state);
	
	public InvoiceApply get(Integer id);
	
	public void delete(Integer id);
	
	public Page list(int page, int pageSize);
	
	public List listMember();
	
	public void refuse(Integer id, String reson);
}

