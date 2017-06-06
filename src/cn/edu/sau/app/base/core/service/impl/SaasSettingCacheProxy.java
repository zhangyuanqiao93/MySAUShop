package cn.edu.sau.app.base.core.service.impl;

import java.util.List;
import java.util.Map;

import cn.edu.sau.app.base.core.service.ISettingService;
import cn.edu.sau.app.base.core.service.SettingRuntimeException;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.framework.cache.ICache;

/**
 * SAAS式的设置缓存代理类。
 */
public class SaasSettingCacheProxy implements ISettingService {

	private ISettingService settingService;
	private ICache<Map<String,Map<String,String>>> cache;
	public SaasSettingCacheProxy(ISettingService settingService){
		this.settingService = settingService;
	}
	
	
	public Map<String,Map<String ,String>>  getSetting() {
		String uKey =   this.getCurrentUserid() +"_"+ this.getCurrentSiteid() ;
		Map<String,Map<String,String>> settings  = cache.get(uKey);
		//未命中，由库中取出设置并压入缓存
		if(settings==null || settings.size()<=0){
			settings= this.settingService.getSetting();
			cache.put(uKey,settings);
		}
		return settings;
	}
 
	
	//保存库同时保存缓存
	
	public void save(Map<String,Map<String,String>> settings ) throws SettingRuntimeException {
		String uKey =   this.getCurrentUserid() +"_"+ this.getCurrentSiteid() ;
		this.settingService.save(settings);
		cache.put(uKey,  settingService.getSetting());
	}
	
	
	/**
	 * 获取当前用户id
	 * @return
	 */
	protected Integer getCurrentUserid(){
		EopSite site = EopContext.getContext().getCurrentSite();
//		IUserService  userService = UserServiceFactory.getUserService();
		Integer userid = site.getUserid();
		return userid;
	}
	
	
	/**
	 * 获取当前站点
	 * @return
	 */
	protected Integer getCurrentSiteid(){
		EopSite site = EopContext.getContext().getCurrentSite();
		return site.getId();
	}

	
	public String getSetting(String group, String code) {
		Map<String,Map<String ,String>> settings  = this.getSetting();
		if(settings==null) return null;
		
		Map<String ,String> setting = settings.get(group);		
		if(setting== null )return null;
		
		return setting.get(code);
	}

	public void setCache(ICache<Map<String, Map<String, String>>> cache) {
		this.cache = cache;
	}

	
	public List<String> onInputShow() {
		
		return this.settingService.onInputShow();
	}
	
	
}
