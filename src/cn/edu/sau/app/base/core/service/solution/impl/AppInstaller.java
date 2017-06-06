package cn.edu.sau.app.base.core.service.solution.impl;

import org.apache.log4j.Logger;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import cn.edu.sau.app.base.core.service.solution.IInstaller;
import cn.edu.sau.eop.resource.IAppManager;
import cn.edu.sau.eop.resource.model.EopApp;
import cn.edu.sau.eop.sdk.IApp;
import cn.edu.sau.eop.sdk.context.ConnectType;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;
import cn.edu.sau.framework.database.IDaoSupport;

/**
 * 应用安装器
 */
public class AppInstaller implements IInstaller {
	protected final Logger logger = Logger.getLogger(getClass());
	private IAppManager appManager;
	private IDaoSupport daoSupport;
	
	
	/**
	 * saas式安装
	 * @param app
	 */
	private void saasInstall(IApp app){
		app.saasInstall();
	}
	
	
	/**
	 * 初始化安装
	 * @param app
	 * @param el
	 */
	private void install(IApp app, Element el){

		//调用 应用的安装方法
		//因需要base应用创建表所以要先install再接入 
		app.install(); 
		

		//接入应用
		EopApp eopApp = new EopApp();
		eopApp.setApp_name(app.getName());
		eopApp.setAppid(app.getId());
		eopApp.setPath(app.getNameSpace());
		eopApp.setDeployment(ConnectType.local);
		eopApp.setDescript(app.getName());
		
		//v2.3.0新增：记录接入应用的版本
		eopApp.setVersion(el.getAttribute("version"));
		this.appManager.add(eopApp);
		

	}
	
	
	
	/**
     * 根据apps片断调用App进行安装
     */
	public void install(String productId, Node fragment) {
		/**
		 * 如果未安装清空应用表
		 */
		if(!EopSetting.INSTALL_LOCK.toUpperCase().equals("YES")){
			this.daoSupport.execute("truncate table eop_app");
		}
		
		
		//找出app结点进行安装
		NodeList nodeList  = fragment.getChildNodes();
		for(int i=0;i<nodeList.getLength();i++){
			Node node = nodeList.item(i);
			if(node.getNodeType() == Node.ELEMENT_NODE){
				Element el = (Element)node;
				String appid = el.getAttribute("id");
				
				if(this.logger.isDebugEnabled()){
					this.logger.debug("安装应用["+appid+"]...");
				}
				
				IApp app =SpringContextHolder.getBean(appid);
				if(app!=null){
					
					//未安装，进行行初始化安装
					if(!EopSetting.INSTALL_LOCK.toUpperCase().equals("YES")){
						this.install(app,el);
					}
					
					//如果是saas式，则需要进行saas安装
					if("2".equals(EopSetting.RUNMODE)   ){
						this.saasInstall(app);
					}
				}
				
				if(this.logger.isDebugEnabled()){
					this.logger.debug("安装应用["+appid+"]完成.");
				}
			}
		}
	}
	public IAppManager getAppManager() {
		return appManager;
	}
	public void setAppManager(IAppManager appManager) {
		this.appManager = appManager;
	}
	public IDaoSupport getDaoSupport() {
		return daoSupport;
	}
	public void setDaoSupport(IDaoSupport daoSupport) {
		this.daoSupport = daoSupport;
	}
 
	
}
