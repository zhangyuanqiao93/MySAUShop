package cn.edu.sau.javashop.plugin.search;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.plugin.search.IGoodsSearchFilter;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.Cat;
import cn.edu.sau.javashop.core.plugin.search.IPutWidgetParamsEvent;
import cn.edu.sau.javashop.core.plugin.search.SearchSelector;


/**
 * 商品标签搜索过虑器  
 * @author zyq
 *
 */
public class TagSearchFilter extends AutoRegisterPlugin implements
        IGoodsSearchFilter,IPutWidgetParamsEvent{

	public List<SearchSelector> createSelectorList(Cat cat, String url,
			String urlFragment) {
		
		return null;
	}


	public void filter(StringBuffer sql, Cat cat, String urlFragment) {
		if(!StringUtil.isEmpty(urlFragment))
		sql.append(" and goods_id in (select rel_id from es_tag_rel where tag_id in("+urlFragment +") )");
	}



	public void putParams(Map<String, Object> params, String urlFragment) {
		if(!StringUtil.isEmpty(urlFragment)){
			params.put("tag", urlFragment);
		}
	}
	
	
	public String getFilterId() {
		
		return "tag";
	}


	public String getAuthor() {
		
		return "kingapex";
	}


	public String getId() {
		
		return "tagSearchFilter";
	}


	public String getName() {
		
		return "商品标签搜索过虑器";
	}


	public String getType() {
		
		return "searchFilter";
	}


	public String getVersion() {
		
		return "1.0";
	}


	public void perform(Object... params) {


	}
	public void register() {
		

	}


}
