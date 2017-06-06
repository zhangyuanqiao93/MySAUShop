package cn.edu.sau.cms.core.plugin;

import cn.edu.sau.cms.core.model.DataField;

/**
 * 字段值显示事件
 * 当进行字段值显示时激发此事件
 */
public interface IFieldValueShowEvent {
	
	/**
	 * 字段显示事件字义
	 * @param field 字段实体
	 * @param value 数据库中保存的字段值
	 * @return 处理后的字段值
	 */
	public Object onShow(DataField field, Object value);
}
