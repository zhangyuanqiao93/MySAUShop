package cn.edu.sau.eop.processor.facade.support.widget;

import java.util.Map;

import cn.edu.sau.eop.processor.facade.support.LocalWidgetPaser;
import cn.edu.sau.eop.processor.facade.support.WidgetEditModeWrapper;
import cn.edu.sau.eop.processor.widget.IWidgetHtmlGetter;
import cn.edu.sau.eop.processor.widget.IWidgetPaser;
import cn.edu.sau.eop.sdk.user.UserServiceFactory;

/**
 * 挂件Html获取器</br>
 * 通过 IWidgetPaser接口 解析挂件html</br>
 * </br>
 * 分为两种模式：浏览模式和编辑模式</br>
 * 浏览模式
 * @see #IWidgetPaser
 *
 */
public class WidgetHtmlGetter implements IWidgetHtmlGetter {

	
	public String process(Map<String, String> params,String page) {
		
		IWidgetPaser widgetPaser = new LocalWidgetPaser();
		widgetPaser = new BorderWrapper(widgetPaser);
		if(UserServiceFactory.getUserService().isUserLoggedIn() &&"edit".equals(params.get("mode"))){
			widgetPaser = new WidgetEditModeWrapper(widgetPaser);
		}
		String html =widgetPaser.pase(params);
		return html;
	}



	

}
