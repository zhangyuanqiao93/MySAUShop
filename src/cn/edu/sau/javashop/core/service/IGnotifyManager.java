package cn.edu.sau.javashop.core.service;

import cn.edu.sau.framework.database.Page;

/**
 * 缺货登记

 */
public interface IGnotifyManager {

	/**
	 * 分页显示缺货登记
	 * 
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page pageGnotify(int pageNo, int pageSize);

	/**
	 * 删除登记
	 * 
	 * @param gnotify_id
	 */
	public void deleteGnotify(int gnotify_id);
	
	/**
	 * 登记
	 * @param productid
	 */
	public void addGnotify(int goodsid);

}
