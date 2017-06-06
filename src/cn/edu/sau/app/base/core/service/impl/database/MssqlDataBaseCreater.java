package cn.edu.sau.app.base.core.service.impl.database;

import cn.edu.sau.app.base.core.service.IDataBaseCreater;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.database.ISqlFileExecutor;


/**
 * mssql数据库创建者
 *
 */
public class MssqlDataBaseCreater implements IDataBaseCreater {
	private  ISqlFileExecutor sqlFileExecutor;
	public void create() {
		if(EopSetting.RUNMODE.equals("2")){
			this.sqlFileExecutor.execute("USE [master];");
//			this.sqlFileExecutor.execute("GO;");
			this.sqlFileExecutor.execute("IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'eop')  DROP DATABASE [eop]");
			this.sqlFileExecutor.execute("CREATE DATABASE [eop]");
			this.sqlFileExecutor.execute("USE [eop]");
		}
			
		sqlFileExecutor.execute("file:cn/edu/sau/eop/eop_mssql.sql");
		sqlFileExecutor.execute("file:cn/edu/sau/javashop/javashop_mssql.sql");
		sqlFileExecutor.execute("ficn/edu/sau/cms/cms_mssql.sql");
	}
	public ISqlFileExecutor getSqlFileExecutor() {
		return sqlFileExecutor;
	}
	public void setSqlFileExecutor(ISqlFileExecutor sqlFileExecutor) {
		this.sqlFileExecutor = sqlFileExecutor;
	}
}
