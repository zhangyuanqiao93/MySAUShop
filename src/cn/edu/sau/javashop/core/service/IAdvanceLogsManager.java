package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.AdvanceLogs;

/**
 * 预存款日志
 * 

 */
public interface IAdvanceLogsManager {

	/**
	 * 列表当前会员的预存款日志
	 * 
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page pageAdvanceLogs(int pageNo, int pageSize);

	/**
	 * 新增日志
	 * 
	 * @param advanceLogs
	 */
	public void add(AdvanceLogs advanceLogs);

	/**
	 * 列表指定会员的预存款日志
	 * 
	 * @param member_id
	 * @return
	 */
	public List listAdvanceLogsByMemberId(int member_id);

}
