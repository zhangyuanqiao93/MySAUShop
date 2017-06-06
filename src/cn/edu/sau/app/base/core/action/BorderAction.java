package cn.edu.sau.app.base.core.action;

import java.util.List;

import cn.edu.sau.eop.resource.IBorderManager;
import cn.edu.sau.eop.resource.model.Border;
import cn.edu.sau.framework.action.WWAction;

/**
 * 读取用户站点边框列表
 */
public class BorderAction extends WWAction {
	
	private IBorderManager borderManager;
	private List<Border> borderList;
	
	public String execute(){
		borderList=borderManager.list();
		return "list";
	}
	public void setBorderManager(IBorderManager borderManager) {
		this.borderManager = borderManager;
	}
	public void setBorderList(List<Border> borderList) {
		this.borderList = borderList;
	}
	public IBorderManager getBorderManager() {
		return borderManager;
	}
	public List<Border> getBorderList() {
		return borderList;
	}
	
}
