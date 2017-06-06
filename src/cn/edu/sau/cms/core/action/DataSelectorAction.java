package cn.edu.sau.cms.core.action;

import java.util.List;

import cn.edu.sau.cms.core.model.DataCat;
import cn.edu.sau.cms.core.model.DataField;
import cn.edu.sau.cms.core.service.IDataCatManager;
import cn.edu.sau.cms.core.service.IDataFieldManager;
import cn.edu.sau.cms.core.service.IDataManager;
import cn.edu.sau.framework.action.WWAction;

/**
 * 数据选择器
 * @author zyq
 *
 */
public class DataSelectorAction extends WWAction {
	
	private IDataManager dataManager;
	private IDataCatManager dataCatManager;
	private List<DataCat> catList;
	private List<DataField> fieldList;
	private IDataFieldManager dataFieldManager;
	private int catid;
	public String showDialog(){
		catList =dataCatManager.listAllChildren(0);
		return "dialog";
	}

	public String list(){
		this.fieldList = dataFieldManager.listByCatId(catid);
		this.webpage =dataManager.list(catid, this.getPage(), 15);
		return "list";
	}

	public IDataManager getDataManager() {
		return dataManager;
	}

	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}

	public IDataCatManager getDataCatManager() {
		return dataCatManager;
	}

	public void setDataCatManager(IDataCatManager dataCatManager) {
		this.dataCatManager = dataCatManager;
	}

	public List<DataCat> getCatList() {
		return catList;
	}

	public void setCatList(List<DataCat> catList) {
		this.catList = catList;
	}

	public int getCatid() {
		return catid;
	}

	public void setCatid(int catid) {
		this.catid = catid;
	}

	public IDataFieldManager getDataFieldManager() {
		return dataFieldManager;
	}

	public void setDataFieldManager(IDataFieldManager dataFieldManager) {
		this.dataFieldManager = dataFieldManager;
	}

	public List<DataField> getFieldList() {
		return fieldList;
	}

	public void setFieldList(List<DataField> fieldList) {
		this.fieldList = fieldList;
	}

	
}
