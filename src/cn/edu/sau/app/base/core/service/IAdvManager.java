package cn.edu.sau.app.base.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.app.base.core.model.Adv;

/**
 * 广告接口

 * <br/>
 */
public interface IAdvManager {

	/**
	 * 广告信息修改
	 * 
	 * @param adv
	 */
	public void updateAdv(Adv adv);

	/**
	 * 获取广告详细
	 * 
	 * @param advid
	 * @return
	 */
	public Adv getAdvDetail(Long advid);

	/**
	 * 广告新增
	 * 
	 * @param adv
	 */
	public void addAdv(Adv adv);

	/**
	 * 广告删除
	 * 
	 * @param advid
	 */
	public void delAdvs(String ids);

	/**
	 * 分页读取广告
	 * 
	 * @param page
	 * @param pageSize
	 * @return
	 */
	public Page pageAdv(String order, int page, int pageSize);
	
	/**
	 * 获取对应acid的所有广告列表
	 * @param acid
	 * @return
	 */
	public List listAdv(Long acid);
	
	
	/**
	 * 搜索关键字
	 * @param acid
	 * @param cname
	 * @return
	 */
	public Page search(Long acid, String advname, int pageNo, int pageSize, String order);
	
	
}
