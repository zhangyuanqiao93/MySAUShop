package cn.edu.sau.app.base.core.service.dbsolution;

import java.sql.Connection;
/**


 * 
 */
public interface IDBSolution {
	public boolean setConnection(Connection conn);
	/**
	 * 通过设置并创建JDBC连接
	 * @param driver
	 * @param url
	 * @param username
	 * @param password
	 */
	public boolean dbImport(String xml);
	public boolean dbExport(String[] tables, String xml);
	public String dbExport(String[] tables, boolean dataOnly);
	public int deleteTable(String table);
	public void setPrefix(String prefix);
}
