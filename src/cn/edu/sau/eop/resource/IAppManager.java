package cn.edu.sau.eop.resource;

import java.util.List;

import cn.edu.sau.eop.resource.model.EopApp;

/**
 * 应用管理 *

 */
public interface IAppManager {

	
	/**
	 * 添加一个应用
	 * @param app
	 */
	public void add(EopApp app);
	
	/**
	 * 获取所有应用列表
	 * @return
	 */
	public List<EopApp> list();
	
	
	/**
	 * 获取某个应用
	 * @param appid
	 * @return
	 */
	public EopApp get(String appid);

}
