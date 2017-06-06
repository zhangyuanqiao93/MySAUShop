package cn.edu.sau.eop.sdk.listener;

import java.util.List;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import cn.edu.sau.eop.resource.IAppManager;
import cn.edu.sau.eop.resource.model.EopSite;
import org.apache.log4j.Logger;

import cn.edu.sau.eop.resource.model.EopApp;
import cn.edu.sau.eop.sdk.IApp;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

public class EopSessionListener implements HttpSessionListener {
	
	protected final Logger logger = Logger.getLogger(getClass());
	
	public void sessionCreated(HttpSessionEvent se) {
		
	}
	
	public void sessionDestroyed(HttpSessionEvent se) {
		
		if(logger.isDebugEnabled()){
			logger.debug("session destroyed..");
		}
		
		//如果是已经安装状态
		if("YES".equals( EopSetting.INSTALL_LOCK.toUpperCase())){
			
			if(logger.isDebugEnabled()){
				logger.debug("installed...");
			}
			
			EopSite site = (EopSite) se.getSession().getAttribute("site_key");
			String sessionid = se.getSession().getId();
			IAppManager appManager = SpringContextHolder.getBean("appManager");
			List<EopApp> appList  = appManager.list();
			for(EopApp eopApp:appList){

				String appid  = eopApp.getAppid();
				
				if(logger.isDebugEnabled()){
					logger.debug("call app["+appid+"] destory...");
				}
				
				
				IApp app = SpringContextHolder.getBean(appid);
				app.sessionDestroyed(sessionid,site);
			}
		}else{
			if(logger.isDebugEnabled()){
				logger.debug("not installed...");
			}
		}
	}

}
