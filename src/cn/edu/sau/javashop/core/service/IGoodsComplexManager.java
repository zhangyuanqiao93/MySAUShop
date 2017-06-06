package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.javashop.core.model.GoodsComplex;

/**
 * 相关商品
 * 

 */
public interface IGoodsComplexManager {

	
	/**
	 * 读取某个商品所有的关联商品，包括其单向关联的，或其它商品双向关联它的。
	 * @param goods_id
	 * @return
	 */
	public List listAllComplex(int goods_id);

	
	
	/**
	 * 读取某个商品单项关联的商品
	 * @param goods_id
	 * @return
	 */
	public List listComplex(int goods_id);
	
	
	
	public void addCoodsComplex(GoodsComplex complex);

	/**
	 * 全局更新相关商品
	 * 
	 * @param goods_1
	 * @param list
	 */
	public void globalGoodsComplex(int goods_1, List<GoodsComplex> list);
}
