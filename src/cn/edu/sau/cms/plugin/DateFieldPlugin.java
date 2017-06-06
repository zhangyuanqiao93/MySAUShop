package cn.edu.sau.cms.plugin;

import cn.edu.sau.cms.core.model.DataField;
import cn.edu.sau.cms.core.plugin.AbstractFieldPlugin;

/**
 * 日期控件字段插件
 * @author zyq
 * 2010-7-7上午11:04:30
 */
public class DateFieldPlugin extends AbstractFieldPlugin {

	
	public int getHaveSelectValue() {
		
		return 0;
	}

	
	public String onDisplay(DataField field, Object value) {
		StringBuffer html = new StringBuffer();
		 
		html.append("<input type=\"text\" name=\"");
		html.append(field.getEnglish_name());
		html.append("\" readonly=\"true\"");
		if(value!=null){
			html.append("value=\"");
			html.append(value);
			html.append("\"");
		}
		html.append(" class=\"dateinput\" ");
		html.append(">");
	 
		return html.toString();
	}

	
	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "dateinput";
	}

	
	public String getName() {
		
		return "日期控件";
	}

	
	public String getType() {
		
		return "field";
	}

	
	public String getVersion() {
		
		return "1.0";
	}

}
