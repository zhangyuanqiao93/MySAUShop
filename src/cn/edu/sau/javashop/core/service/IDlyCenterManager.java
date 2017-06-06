package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.javashop.core.model.DlyCenter;

/**
 * 发货中心

 */
public interface IDlyCenterManager {

	public List<DlyCenter> list();
	
	public DlyCenter get(Integer dly_center_id);

	public void add(DlyCenter dlyCenter);

	public void edit(DlyCenter dlyCenter);

	public void delete(Integer[] id);

}
