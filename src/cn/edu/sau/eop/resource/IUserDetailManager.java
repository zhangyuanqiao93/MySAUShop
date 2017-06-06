package cn.edu.sau.eop.resource;

import cn.edu.sau.eop.resource.model.EopUserDetail;

/**
 * 用户详细管理接口
 */
public interface IUserDetailManager {
	
	/**
	 * 读取详细
	 * @param userid
	 * @return
	 */
	public EopUserDetail get(Integer userid);

	
	/**
	 * 添加
	 * @param eopUserDetail
	 */
	public void add(EopUserDetail eopUserDetail);

	
	
	/**
	 * 修改
	 * @param eopUserDetail
	 */
	public void edit(EopUserDetail eopUserDetail);
}
