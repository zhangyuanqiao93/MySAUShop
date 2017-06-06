package cn.edu.sau.app.base.core.service;

import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.spring.SpringContextHolder;

/**
 * 数据库创建者工厂

 *
 */
public abstract class DataBaseCreaterFactory {
	private  DataBaseCreaterFactory(){}

	
	public static IDataBaseCreater getDataBaseCreater(){
		if(EopSetting.DBTYPE.equals("1")){
			return SpringContextHolder.getBean("mysqlDataBaseCreater") ;
		} else if(EopSetting.DBTYPE.equals("2")){
			return SpringContextHolder.getBean("oracleDataBaseCreater") ;
		} else if(EopSetting.DBTYPE.equals("3")){
			return SpringContextHolder.getBean("mssqlDataBaseCreater") ;
		}
		throw new RuntimeException("未知的数据库类型");
				
	}
	

	
	
	
}
