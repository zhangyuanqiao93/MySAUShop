package cn.edu.sau.javashop.core.service;

import java.util.Map;

import cn.edu.sau.framework.database.Page;

public interface IGoodsSearchManager2 {
	
	
	public Page search(int pageNo, int pageSize, String url) ;
	
	
	public Map<String,Object > getSelector(String url);
	
	
	public void putParams(Map<String, Object> params, String url);
	
	
}
