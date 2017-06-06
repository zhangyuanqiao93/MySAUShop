package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.ReturnsOrder;

/**
 * 退货管理
 *
 */
public interface IReturnsOrderManager {
	
	
	/**
	 * 添加一个退货信息
	 * @param returnsOrder
	 */
	public void add(ReturnsOrder returnsOrder, Integer[] specids);
	
	
	
	/**
	 * 根据id获取退换信息
	 * @param id
	 */
	public ReturnsOrder get(Integer id);
	
	
	/**
	 * 读取当前会员的退货申请
	 */
	public List<ReturnsOrder> listMemberOrder();
	
	
	/**
	 * 读取所有的退货信息
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page listAll(int pageNo, int pageSize);
	
	/**
	 * 更新状态s
	 * @param id
	 * @param state
	 */
	public void updateState(Integer id, int state);
	
	
	/** 
	 * 删除
	 * @param id
	 */
	public void delete(Integer id);
	
	
	/**
	 * 拒绝退货申请
	 * @param id
	 * @param reson
	 */
	public void refuse(Integer id, String reson);
	
	
	
}
