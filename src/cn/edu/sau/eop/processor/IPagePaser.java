package cn.edu.sau.eop.processor;

/**
 * 页面解析器接口
 */
public interface IPagePaser {
	
	/**
	 * 给定一个站点url，解析页面的html<br/>
	 * 
	 * @param url 全地址，包含其参数，含有?mode=yes为编辑模式
	 * @return
	 */
	public String pase(String url);
	
	
}
