package cn.edu.sau.javashop.core.service.impl;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.eop.sdk.utils.UploadUtil;
import cn.edu.sau.javashop.core.model.SpecValue;
import cn.edu.sau.javashop.core.model.mapper.SpecValueMapper;
import cn.edu.sau.javashop.core.service.ISpecValueManager;

/**
 * 规格值管理

 */
public class SpecValueManager extends BaseSupport<SpecValue> implements ISpecValueManager {

	
	public void add(SpecValue value) {
	   this.baseDaoSupport.insert("spec_values",value);

	}



	
	public List<SpecValue> list(Integer specId) {
		String sql ="select * from spec_values where spec_id =?";
		List valueList = this.baseDaoSupport.queryForList(sql, new SpecValueMapper() ,specId);
		return valueList;
	}
	

	
	public Map get(Integer valueId) {
		String sql ="select sv.*,s.spec_type from "+this.getTableName("spec_values")+" sv,"+ this.getTableName("specification")+" s  where sv.spec_id=s.spec_id and sv.spec_value_id =?"; 
		Map temp = this.daoSupport.queryForMap(sql, valueId);
		String spec_image = (String)temp.get("spec_image");
		if(spec_image!=null){
			spec_image  =UploadUtil.replacePath(spec_image); 
		}
		temp.put("spec_image", spec_image);
		return temp;
	}

}
