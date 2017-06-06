package cn.edu.sau.app.base.core.service.solution;

import org.w3c.dom.Node;

/**
 * 安装器接口
 */
public interface IInstaller {
	
	/**
	 * 根据一相应的置文件片段进行安装某product
	 * @param fragment
	 */
	public void install(String productId, Node fragment);

	
	 
}
