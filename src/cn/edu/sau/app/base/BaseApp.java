package cn.edu.sau.app.base;

import cn.edu.sau.app.base.core.service.impl.cache.SiteMenuCacheProxy;
import cn.edu.sau.app.base.core.service.impl.cache.SitemapCacheProxy;
import cn.edu.sau.app.base.core.service.solution.impl.SqlExportService;
import cn.edu.sau.eop.resource.impl.cache.ThemeUriCacheProxy;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.App;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.cache.CacheFactory;
import cn.edu.sau.framework.database.IDBRouter;
import cn.edu.sau.framework.database.ISqlFileExecutor;
import org.dom4j.Document;

/**
 * base应用

 */
public class BaseApp extends App {
	private IDBRouter baseDBRouter;
	private SqlExportService sqlExportService;
	private ISqlFileExecutor sqlFileExecutor;

	public BaseApp() {
		tables.add("adv");
		tables.add("access");
		tables.add("adcolumn");
		tables.add("admintheme");
		tables.add("auth_action");
		tables.add("border");
		tables.add("friends_link");
		tables.add("guestbook");
		tables.add("menu");
		tables.add("role");
		tables.add("role_auth");
		tables.add("settings");
		tables.add("site_menu");
		tables.add("user_role");
		tables.add("widgetbundle");
	}

	/************** 应用的一些基础信息 ***********/
	public String getId() {
		return "base";
	}

	public String getName() {
		return "base应用";
	}

	public String getNameSpace() {
		return "/core";
	}

	/**
	 * 在进行saas式安装时为某用户初始化数据库
	 */
	public void saasInstall() {
		for (int i = 0; i < tables.size(); i++)
			baseDBRouter.createTable(tables.get(i));
	}

	/**
	 * Try dumpSql(org.dom4j.Document document)
	 */
	@Deprecated
	public String dumpSql() {
		return "";
	}

	public String dumpSql(Document setup) {
		StringBuffer sql = new StringBuffer();

		// tables.add("adminuser"); //不导出管理员数据
		sql.append(this.sqlExportService.dumpSql(tables, "clean", setup));
		sql.append(this.createBaseAppSql());
		return sql.toString();
	}

	/**
	 * 创建导出base应用的sql：
	 * 当前包含了更新站点：如名称，标志、keyword等，其它标志等信息如是fs格式，应包含在attachment一上起导出了。
	 * 
	 * @return
	 */
	private String createBaseAppSql() {
		EopSite site = EopContext.getContext().getCurrentSite();
		String logofile = site.getLogofile();
		String icofile = site.getIcofile();
		String upath = EopSetting.IMG_SERVER_DOMAIN
				+ EopContext.getContext().getContextPath();
		if (icofile != null)
			icofile = icofile.replaceAll(upath, "fs:");

		if (logofile != null)
			logofile = logofile.replaceAll(upath, "fs:");

		String sql = "update eop_site set sitename='" + site.getSitename()
				+ "',logofile='" + logofile + "',icofile='" + icofile
				+ "',keywords='" + site.getKeywords() + "',descript='"
				+ site.getDescript()
				+ "' where userid=<userid> and id=<siteid>;\n";

		return sql;
	}

	/**
	 * 系统初始化安装时安装base的sql脚本
	 */
	public void install() {
		this.doInstall("file:cn/edu/sau/app/base/base.xml");
	}

	protected void cleanCache() {
		super.cleanCache();
		// 清除挂件缓存
		CacheFactory.getCache(CacheFactory.WIDGET_CACHE_NAME_KEY).remove(
				"widget_" + userid + "_" + siteid);

		// 清除sitemap缓存
		CacheFactory.getCache(SitemapCacheProxy.CACHE_KEY).remove(
				SitemapCacheProxy.CACHE_KEY + "_" + userid + "_" + siteid);

		// 清除themuri缓存
		CacheFactory.getCache(CacheFactory.THEMEURI_CACHE_NAME_KEY).remove(
				ThemeUriCacheProxy.LIST_KEY_PREFIX + userid + "_" + siteid);

		// 清除SiteMenu缓存
		CacheFactory.getCache(SiteMenuCacheProxy.MENU_LIST_CACHE_KEY).remove(
				SiteMenuCacheProxy.MENU_LIST_CACHE_KEY + "_" + userid + "_"
						+ siteid);

	}

	/**
	 * session失效事件
	 */
	public void sessionDestroyed(String seesionid, EopSite site) {
		// do noting
	}

	public IDBRouter getBaseDBRouter() {
		return baseDBRouter;
	}

	public void setBaseDBRouter(IDBRouter baseDBRouter) {
		this.baseDBRouter = baseDBRouter;
	}

	public IDBRouter getBaseSaasDBRouter() {
		return baseDBRouter;
	}

	public void setBaseSaasDBRouter(IDBRouter baseSaasDBRouter) {
		this.baseDBRouter = baseSaasDBRouter;
	}

	public ISqlFileExecutor getSqlFileExecutor() {
		return sqlFileExecutor;
	}

	public void setSqlFileExecutor(ISqlFileExecutor sqlFileExecutor) {
		this.sqlFileExecutor = sqlFileExecutor;
	}

	public SqlExportService getSqlExportService() {
		return sqlExportService;
	}

	public void setSqlExportService(SqlExportService sqlExportService) {
		this.sqlExportService = sqlExportService;
	}

}
