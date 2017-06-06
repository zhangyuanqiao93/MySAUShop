package cn.edu.sau.app.base.core.service;

import cn.edu.sau.app.base.core.model.VersionState;


/**
 * 版本更新业务类

 *
 */
public interface IUpdateManager {
	
	/**
	 * 检测是否有新版本
	 * @return
	 */
	public VersionState checkNewVersion();
	
	
	/**
	 * 升级新版本
	 */
	public void update();
	
	
	
}
