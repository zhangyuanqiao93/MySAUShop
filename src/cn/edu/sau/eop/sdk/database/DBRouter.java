package cn.edu.sau.eop.sdk.database;

import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.framework.database.IDBRouter;
import org.springframework.jdbc.core.JdbcTemplate;

import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 简单的分表方式SAAS数据路由器<br/>
 * 由模块名连接上用户id形成表名
 * 

 */
public class DBRouter implements IDBRouter {
	private JdbcTemplate jdbcTemplate;

	// 表前缀
	private String prefix;

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public void createTable(String moudle) {
		if ("1".equals(EopSetting.RUNMODE)) {
			return;
		}

		EopSite site = EopContext.getContext().getCurrentSite();
		Integer userid = site.getUserid();
		Integer siteid = site.getId();

		prefix = prefix == null ? "" : prefix;
		String sql = "drop table if exists " + prefix + moudle + "_" + userid
				+ "_" + siteid;
		this.jdbcTemplate.execute(sql);
		sql = "create table " + prefix + moudle + "_" + userid + "_" + siteid
				+ " like " + prefix + moudle;
		this.jdbcTemplate.execute(sql);
	}

	public String getTableName(String moudle) {
		String result = StringUtil.addPrefix(moudle, prefix);
		if ("1".equals(EopSetting.RUNMODE)) {
			return result;
		}

		EopSite site = EopContext.getContext().getCurrentSite();
		Integer userid = site.getUserid();
		Integer siteid = site.getId();

		return result + "_" + userid + "_" + siteid;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
