package cn.edu.sau.eop.resource.impl;

import java.util.List;

import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.framework.util.FileUtil;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.eop.resource.IAdminThemeManager;
import cn.edu.sau.eop.resource.model.AdminTheme;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.eop.sdk.database.BaseSupport;

/**
 * 后台主题管理
 */
public class AdminThemeManagerImpl extends BaseSupport<AdminTheme> implements IAdminThemeManager {

 
	@Transactional(propagation = Propagation.REQUIRED)
	public Integer add(AdminTheme theme,boolean isCommon) {
		 
		try {
			//this.copy(theme,isCommon);
			this.baseDaoSupport.insert("admintheme", theme);
			return this.baseDaoSupport.getLastId("admintheme");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("安装后台主题出错");
		}
		
	}
	
	public void clean() {
		this.baseDaoSupport.execute("truncate table admintheme");
	}
	
	
	private void copy(AdminTheme theme,boolean isCommon) throws Exception  {
	 
		EopSite site  = EopContext.getContext().getCurrentSite();

		//公用模板由common目录复制，非公用由产品目录复制
		String basePath =isCommon?EopSetting.APP_DATA_STORAGE_PATH:EopSetting.PRODUCTS_STORAGE_PATH+ "/" + theme.getProductId();
		basePath= basePath +"/adminthemes";
		
		
		String contextPath = EopContext.getContext().getContextPath();
		//复制图片至静态资源服务器
		String targetPath = EopSetting.IMG_SERVER_PATH   +contextPath + "/adminthemes/"+ theme.getPath() ;
		FileUtil.copyFolder(basePath + "/" + theme.getPath() + "/images",targetPath+ "/images");
		FileUtil.copyFile(basePath + "/" + theme.getPath() + "/preview.png",targetPath+ "/preview.png");
		FileUtil.copyFolder(basePath + "/" + theme.getPath() + "/css",targetPath+ "/css");
		FileUtil.copyFolder(basePath + "/" + theme.getPath() + "/js",targetPath+ "/js");
		
		
		FileUtil.copyFolder(basePath + "/" + theme.getPath() ,EopSetting.EOP_PATH
				+contextPath
				+ "/adminthemes/" + theme.getPath());
		/*
		 * 只考jsp到eop应用服务器中
		
		IOFileFilter txtSuffixFilter = FileFilterUtils.suffixFileFilter(".jsp");
		IOFileFilter txtFiles = FileFilterUtils.andFileFilter(FileFileFilter.FILE, txtSuffixFilter);

		  
		FileUtils.copyDirectory(
		new File(basePath + "/" + theme.getPath() )
		, 
		
		new File(EopSetting.EOP_PATH
		+ "/user/"
		+ userid
		+ "/"
		+ siteid
		+ "/adminthemes/" + theme.getPath())
		, 
		txtFiles
		);

		 */
	}
	
	
	
	public AdminTheme get(Integer themeid) {
		List<AdminTheme> list= this.baseDaoSupport.queryForList("select * from admintheme where id=?", AdminTheme.class, themeid);
		if(list==null || list.isEmpty()) return null;
		else 
		return list.get(0);
	}

	
	public List<AdminTheme> list() {
		
		return this.baseDaoSupport.queryForList("select * from admintheme ", AdminTheme.class);
	}

	public IDaoSupport<AdminTheme> getDaoSupport() {
		return daoSupport;
	}

	public void setDaoSupport(IDaoSupport<AdminTheme> daoSupport) {
		this.daoSupport = daoSupport;
	}
	



}
