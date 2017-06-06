package cn.edu.sau.cms.core.plugin;

import java.util.Map;

/**
 * 数据保存事件
 */
public interface IDataSaveEvent {
	
	
	/**
	 * 数据保存接口定义
	 * @param data
	 */
	public void onSave(Map data);
}
