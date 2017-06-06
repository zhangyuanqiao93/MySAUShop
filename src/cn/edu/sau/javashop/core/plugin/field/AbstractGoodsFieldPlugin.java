package cn.edu.sau.javashop.core.plugin.field;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;


/**
 * 抽象商品插件基类
 * @author zyq
 *
 */
public abstract class AbstractGoodsFieldPlugin  extends AutoRegisterPlugin implements IFieldSaveEvent,IFieldDispalyEvent,IFieldValueShowEvent {

	public void onSave(Map goods, GoodsField field) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String fieldname = field.getEnglish_name();
		String fieldvalue = request.getParameter(field.getEnglish_name());
		goods.put(fieldname,fieldvalue);
	}
	/**
	 * 数据显示默认响应事件<br>
	 * 逻辑为直接返回字段值<br>
	 * 如果为null返回空串
	 */
	public Object onShow(GoodsField field, Object value) {
		if(value!=null)
		return value.toString();
		else return "";
	}
	
	public String getDataType(){
		return "varchar(255)";
	}
}
