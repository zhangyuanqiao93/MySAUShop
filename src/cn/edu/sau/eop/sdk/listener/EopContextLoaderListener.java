package cn.edu.sau.eop.sdk.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import cn.edu.sau.eop.resource.ISiteManager;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 * EopLinstener 负责初始化站点缓存
 * 只有saas版本有效

 */
public class EopContextLoaderListener implements ServletContextListener {

	
	public void contextDestroyed(ServletContextEvent event) {

	}
	
	public void contextInitialized(ServletContextEvent event) {
		//saas式并且已经安装完成
		if("2".equals(EopSetting.RUNMODE) &&  EopSetting.INSTALL_LOCK.toUpperCase().equals("YES")  ){
			ISiteManager siteManager = SpringContextHolder.getBean("siteManager");
			siteManager.getDnsList();
		}
	}

}
