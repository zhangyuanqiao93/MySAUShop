package cn.edu.sau.javashop.core.model.support;

import java.util.List;

import cn.edu.sau.javashop.core.model.Attribute;
import cn.edu.sau.javashop.core.model.GoodsType;

public class GoodsTypeDTO extends GoodsType {
	
	private List<Attribute> propList;
	private ParamGroup[] paramGroups;
	private List brandList;
	
	public ParamGroup[] getParamGroups() {
		return paramGroups;
	}
	public void setParamGroups(ParamGroup[] paramGroups) {
		this.paramGroups = paramGroups;
	}
	public List<Attribute> getPropList() {
		return propList;
	}
	public void setPropList(List<Attribute> propList) {
		this.propList = propList;
	}
	public List getBrandList() {
		return brandList;
	}
	public void setBrandList(List brandList) {
		this.brandList = brandList;
	}
	
	
 
	
	
	
	
}
