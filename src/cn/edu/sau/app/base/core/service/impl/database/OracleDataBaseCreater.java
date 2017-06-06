package cn.edu.sau.app.base.core.service.impl.database;

import cn.edu.sau.framework.database.ISqlFileExecutor;

import cn.edu.sau.app.base.core.service.IDataBaseCreater;

/**
 *  mysql数据库创建
 *
 */
public class OracleDataBaseCreater implements IDataBaseCreater {
	private ISqlFileExecutor sqlFileExecutor;
	
	public void create() {
		sqlFileExecutor.execute("file:cn/edu/sau/eop/eop_mysql.sql");
		sqlFileExecutor.execute("file:cn/edu/sau/javashop/javashop_mysql.sql");
		sqlFileExecutor.execute("file:cn/edu/sau/cms/cms_mysql.sql");
	}
	public ISqlFileExecutor getSqlFileExecutor() {
		return sqlFileExecutor;
	}
	public void setSqlFileExecutor(ISqlFileExecutor sqlFileExecutor) {
		this.sqlFileExecutor = sqlFileExecutor;
	}

}
