package cn.edu.sau.javashop.plugin.standard.type;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.model.Attribute;
import cn.edu.sau.javashop.core.model.GoodsParam;
import cn.edu.sau.javashop.core.model.support.ParamGroup;
import net.sf.json.JSONArray;

/**
 * 商品类型工具类
 */
public class GoodsTypeUtil {
	private GoodsTypeUtil(){};
	
	public static ParamGroup[] converFormString(String params) {
		if (params == null || params.equals("") || params.equals("[]"))
			return null;
		Map classMap = new HashMap();

		classMap.put("paramList", GoodsParam.class);
		JSONArray jsonArray = JSONArray.fromObject(params);

		Object obj = JSONArray.toArray(jsonArray, ParamGroup.class, classMap);

		if (obj == null)
			return null;

		return (ParamGroup[]) obj;
	}
	
	/**
	 * 将一个json字串转为list
	 * @param props
	 * @return
	 */
	public static List<Attribute> converAttrFormString(String props){
		if (props == null || props.equals(""))
			return new ArrayList();

		JSONArray jsonArray = JSONArray.fromObject(props);
		List<Attribute> list = (List) JSONArray.toCollection(jsonArray,
				Attribute.class);
		return list;
	}
	
}
