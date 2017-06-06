package cn.edu.sau.javashop.core.action.backend;

import java.util.List;
import java.util.Map;

import cn.edu.sau.framework.action.WWAction;
import cn.edu.sau.javashop.core.service.ISpecManager;
import cn.edu.sau.javashop.core.service.ISpecValueManager;

/**
 * 商品规格操作action

 */
public class GoodsSpecAction extends WWAction {
	private ISpecManager specManager;
	private ISpecValueManager specValueManager;
	private List specList;
	private Integer spec_id;
	private Integer value_id;
	private Map spec;
	private List valueList;

	public String execute() {
		specList = specManager.list();
		return "select";
	}

	public String getValues() {
		this.spec = this.specManager.get(spec_id);
		this.valueList = this.specValueManager.list(spec_id);
		return "values";
	}

	public String addOne() {
		spec = this.specValueManager.get(value_id);
		return "add_one";
	}

	public String addAll() {

		return "add_all";
	}

	public ISpecManager getSpecManager() {
		return specManager;
	}

	public void setSpecManager(ISpecManager specManager) {
		this.specManager = specManager;
	}

	public List getSpecList() {
		return specList;
	}

	public void setSpecList(List specList) {
		this.specList = specList;
	}

	public ISpecValueManager getSpecValueManager() {
		return specValueManager;
	}

	public void setSpecValueManager(ISpecValueManager specValueManager) {
		this.specValueManager = specValueManager;
	}

	public Map getSpec() {
		return spec;
	}

	public void setSpec(Map spec) {
		this.spec = spec;
	}

	public List getValueList() {
		return valueList;
	}

	public void setValueList(List valueList) {
		this.valueList = valueList;
	}

	public Integer getSpec_id() {
		return spec_id;
	}

	public void setSpec_id(Integer specId) {
		spec_id = specId;
	}

	public Integer getValue_id() {
		return value_id;
	}

	public void setValue_id(Integer valueId) {
		value_id = valueId;
	}
	
 
 
}
