package cn.edu.sau.javashop.plugin.search;

import java.util.List;
import java.util.Map;

import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.javashop.core.plugin.search.IGoodsSearchFilter;
import cn.edu.sau.javashop.core.plugin.search.IPutWidgetParamsEvent;
import cn.edu.sau.javashop.core.plugin.search.SearchSelector;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.model.Cat;

/**
 * 商品数字属性搜索过虑器
 * @author zyq
 *
 */
public class NumeralPropertySearchFilter extends AutoRegisterPlugin implements
        IGoodsSearchFilter,IPutWidgetParamsEvent {

	
	public List<SearchSelector> createSelectorList(Cat cat, String url,
                                                   String urlFragment) {
		
		return null;
	}

	
	public void filter(StringBuffer sql, Cat cat, String urlFragment) {
		
		//{isgroupbuy_1,islimit_0}
		if(StringUtil.isEmpty(urlFragment)) return ;
		
		
		String[] prop_values = urlFragment.split(",");
		for(String propvalue:prop_values){
			if(!StringUtil.isEmpty(propvalue )){
				String[] ar= propvalue.split("_");
				if(ar.length!=2) continue;
				
				sql.append(" and ");
				sql.append(ar[0]);
				sql.append("=");
				sql.append(ar[1]);
				
				
			}
		}
		
	}
	
	
	/**
	 * 向挂件压入参数
	 */
	public void putParams(Map<String, Object> params, String urlFragment) {
		if(StringUtil.isEmpty(urlFragment)) return ;
		
		String[] prop_values = urlFragment.split(",");
		for(String propvalue:prop_values){
			if(!StringUtil.isEmpty(propvalue )){
				String[] ar= propvalue.split("_");
				if(ar.length!=2) continue;
				params.put(ar[0], ar[1]);
			}
		}
	}
	
	
	public String getFilterId() {
		
		return "nattr";
	}

	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "numeralPropertySearchFilter";
	}

	
	public String getName() {
		
		return "数字属性搜索过滤器";
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
