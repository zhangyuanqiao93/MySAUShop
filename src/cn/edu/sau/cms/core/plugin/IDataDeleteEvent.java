package cn.edu.sau.cms.core.plugin;

/**
 * Cms数据删除事件
 */
public interface IDataDeleteEvent {
	
	/**
	 * Cms数据删除事件接口定义
	 * @param catid
	 * @param articleid
	 */
	public void onDelete(Integer catid, Integer articleid);

}
