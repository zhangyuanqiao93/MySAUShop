package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.javashop.core.model.Article;

/**
 * 文章管理
 * 

 */
public interface IArticleManager {
	
	public void saveAdd(Article article);
	
	public void saveEdit(Article article);
	
	public Article get(Integer id);
	
	public List listByCatId(Integer cat_id);
	
	public Page pageByCatId(Integer pageNo, Integer pageSize, Integer cat_id);
	
	public List topListByCatId(Integer cat_id, Integer top_num);
	
	public String getCatName(Integer cat_id);
	
	public void delete(String id);

}
