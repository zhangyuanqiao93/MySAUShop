package cn.edu.sau.app.base.core.action;

import cn.edu.sau.app.base.core.model.Help;
import cn.edu.sau.app.base.core.service.IHelpManager;
import cn.edu.sau.framework.action.WWAction;
import cn.edu.sau.framework.database.ObjectNotFoundException;


/**
 * 帮助action
 */
public class HelpAction extends WWAction {
	
	private IHelpManager helpManager;
	private String helpid;
	private Help help;
	
	public String execute(){
	 try{
		help = helpManager.get(helpid);
		if(help==null){
			 help = new Help();
			 help.setContent("此帮助未定义");
		}
	 }catch(ObjectNotFoundException e){
		 help = new Help();
		 help.setContent("此帮助未定义");
	 }
		return "content";
	}
	
	
	public String getHelpid() {
		return helpid;
	}
	public void setHelpid(String helpid) {
		this.helpid = helpid;
	}
	public IHelpManager getHelpManager() {
		return helpManager;
	}
	public void setHelpManager(IHelpManager helpManager) {
		this.helpManager = helpManager;
	}
	public Help getHelp() {
		return help;
	}
	public void setHelp(Help help) {
		this.help = help;
	}
	
}
