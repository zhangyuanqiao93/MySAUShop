package cn.edu.sau.eop.processor.widget;

import java.util.Map;


/**
 * 挂件解析器的包装器
 */
public  class WidgetWrapper implements IWidgetPaser {
	
	protected IWidgetPaser widgetPaser;
	public WidgetWrapper(IWidgetPaser paser){
		this.widgetPaser = paser;
	}
	
	
	
	public String pase(Map<String, String> params) {
	
		return this.widgetPaser.pase(params);
	}
	
}
