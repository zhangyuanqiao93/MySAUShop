package cn.edu.sau.framework.database.impl;

import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cn.edu.sau.eop.sdk.context.EopSetting;


/**
 * 覆写jdbctemlate ，使用LowerCaseColumnMapRowMapper

 */
public class LowerCaseJdbcTemplate extends JdbcTemplate {
	@Override
	protected RowMapper getColumnMapRowMapper() {
		if("2".equals(EopSetting.DBTYPE)){
			return new LowerCaseColumnMapRowMapper();
		}else{
			return new ColumnMapRowMapper();
		}
	}

}
