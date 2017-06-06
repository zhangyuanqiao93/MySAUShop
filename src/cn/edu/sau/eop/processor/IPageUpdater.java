package cn.edu.sau.eop.processor;


/**
 * 页面更新接口
 */
public interface IPageUpdater {
	
	/**
	 * 给定页面url和挂件参数json字串，更新页面内容
	 * @param url
	 * @param paramJson
	 */
	public void update(String url, String pageContent, String paramJson);
	
}
