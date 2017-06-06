package cn.edu.sau.javashop.core.service;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.model.SpecValue;

/**
 * 规格值管理

 */
public interface ISpecValueManager {
	
	/**
	 * 添加一个规格值 
	 * @param value
	 */
	public void add(SpecValue value);

	
	/**
	 * 读取某个规格的规格值
	 * @param spec_id
	 * @return
	 */
	public List<SpecValue> list(Integer spec_id);

	
	/**
	 * 根据id获取规格值的详细
	 * @param value_id
	 * @return
	 */
	public Map get(Integer value_id);
	
	
}
