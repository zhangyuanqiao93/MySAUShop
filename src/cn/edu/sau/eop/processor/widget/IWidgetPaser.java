package cn.edu.sau.eop.processor.widget;

import java.util.Map;

/**
 * 挂件解析器接口
 */
public interface IWidgetPaser {
	
	/**
	 * 根据挂件参数 出挂件内容
	 * @param params
	 * @return
	 */
	public String pase(Map<String, String> params);
	
	

	
}
