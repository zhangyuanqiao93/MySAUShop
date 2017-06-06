package cn.edu.sau.eop.processor.widget;

import java.util.Map;

/**
 * 挂件处理器接口
 */
public interface IWidgetHtmlGetter {
	
	/**
	 * 根据挂件参数 出挂件内容
	 * 要进行不同的paser组合
	 * @param params
	 * @return
	 */
	public String process(Map<String, String> params, String page);
	
}
