package cn.edu.sau.cms.core.action;

import java.util.Map;

import cn.edu.sau.framework.action.WWAction;
import cn.edu.sau.cms.core.service.IDataManager;

/**
 * cms信息首页项
 * @author zyq
 * 2010-10-14上午09:39:35
 */
public class CmsIndexItemAction extends WWAction {

	private IDataManager dataManager;
	private Map datass;
	
	public String article(){
		datass= dataManager.census();
		return "article";
	}
	public IDataManager getDataManager() {
		return dataManager;
	}
	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}
	public Map getDatass() {
		return datass;
	}
	public void setDatass(Map datass) {
		this.datass = datass;
	}
	

}
