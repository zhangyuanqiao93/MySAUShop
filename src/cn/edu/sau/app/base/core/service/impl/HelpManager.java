package cn.edu.sau.app.base.core.service.impl;

import cn.edu.sau.app.base.core.model.Help;
import cn.edu.sau.app.base.core.service.IHelpManager;
import cn.edu.sau.eop.sdk.database.BaseSupport;

/**
 * 帮助管理
 */
public class HelpManager extends BaseSupport<Help> implements IHelpManager {

	public Help get(String helpid) {
		String sql ="select * from es_help_1_1 where helpid=?";
		return this.daoSupport.queryForObject(sql, Help.class, helpid);
	}
	
}
