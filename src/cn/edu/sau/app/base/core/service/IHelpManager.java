package cn.edu.sau.app.base.core.service;

import cn.edu.sau.app.base.core.model.Help;


/**
 * 帮助内容维护类

 */
public interface IHelpManager {
	
	/**
	 * 根据id获取帮助内容
	 * @param helpid
	 * @return
	 */
	public Help get(String helpid);
	
}
