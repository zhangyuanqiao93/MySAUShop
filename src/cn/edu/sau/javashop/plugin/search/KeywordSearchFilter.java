package cn.edu.sau.javashop.plugin.search;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.Cat;
import cn.edu.sau.javashop.core.plugin.search.IGoodsSearchFilter;
import cn.edu.sau.javashop.core.plugin.search.IPutWidgetParamsEvent;
import cn.edu.sau.javashop.core.plugin.search.SearchSelector;

/**
 * 关键字搜索过滤器
 * @author zyq
 *
 */
public class KeywordSearchFilter extends AutoRegisterPlugin implements
		IGoodsSearchFilter,IPutWidgetParamsEvent {

	
	public List<SearchSelector> createSelectorList(Cat cat, String url,
			String urlFragment) {
		
			return null;
	}
	
	public void putParams(Map<String, Object> params, String urlFragment) {
		String keyword = urlFragment==null ?"" :urlFragment;
		params.put("keyword", keyword);
	}
	
	public void filter(StringBuffer sql, Cat cat, String urlFragment) {
		String keyword = urlFragment==null ?"" :urlFragment;
		if (!StringUtil.isEmpty(keyword)) {
			String encoding  = EopSetting.ENCODING;
			if(!StringUtil.isEmpty(encoding)){
				keyword = StringUtil.to(keyword,encoding);
			}
			sql.append(" and g.name like '%");
			sql.append(keyword);
			sql.append("%'");
		}
	}

	
	public String getFilterId() {
		
		return "keyword";
	}

	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "keywordSearchFilter";
	}

	
	public String getName() {
		
		return "关键字搜索过滤器";
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
