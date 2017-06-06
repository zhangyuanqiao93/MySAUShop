package cn.edu.sau.app.base.core.action;

import java.util.List;

import cn.edu.sau.eop.resource.IIndexItemManager;
import cn.edu.sau.eop.resource.model.IndexItem;
import cn.edu.sau.framework.action.WWAction;

/**
 * 后台首页
 */
public class IndexAction extends WWAction {

	  private IIndexItemManager indexItemManager;
	  private List<IndexItem> itemList;
	  
      public String execute(){
    	  itemList  =  indexItemManager.list();
    	  return "index";
      }
      
            
	public IIndexItemManager getIndexItemManager() {
		return indexItemManager;
	}
	public void setIndexItemManager(IIndexItemManager indexItemManager) {
		this.indexItemManager = indexItemManager;
	}
	public List<IndexItem> getItemList() {
		return itemList;
	}
	public void setItemList(List<IndexItem> itemList) {
		this.itemList = itemList;
	}

}
