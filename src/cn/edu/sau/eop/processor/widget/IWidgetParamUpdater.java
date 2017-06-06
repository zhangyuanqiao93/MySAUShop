package cn.edu.sau.eop.processor.widget;

import java.util.List;
import java.util.Map;

/**
 * 挂件参数更新
 */
public interface IWidgetParamUpdater {
	
	public void update(String pageId, List<Map<String, String>> params);
	
}
