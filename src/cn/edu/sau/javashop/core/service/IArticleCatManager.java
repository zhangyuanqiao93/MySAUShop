package cn.edu.sau.javashop.core.service;

import java.util.List;

import cn.edu.sau.javashop.core.model.ArticleCat;

/**
 * 文章分类管理
 * 

 */
public interface IArticleCatManager {
	
	public ArticleCat getById(int cat_id);
	
	public void saveAdd(ArticleCat cat);
	
	public void update(ArticleCat cat);
	
	public int delete(int cat_id);
	
	public void saveSort(int[] cat_ids, int[] cat_sorts);
	
	public List listChildById(Integer cat_id);
	
	public List listHelp(int cat_id);
}
