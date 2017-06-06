package cn.edu.sau.eop.resource.impl;

import java.util.List;

import cn.edu.sau.eop.resource.IThemeUriManager;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sau.eop.resource.model.ThemeUri;

public class ThemeUriManagerImpl extends BaseSupport<ThemeUri> implements
        IThemeUriManager {

	public void clean() {
		this.baseDaoSupport.execute("truncate table themeuri");
	}
	public ThemeUri get(Integer id) {
		
		return this.baseDaoSupport.queryForObject("select * from themeuri where id=?", ThemeUri.class, id);
	}
	
	@Transactional(propagation = Propagation.REQUIRED)
	public void edit(List<ThemeUri> uriList) {
		for(ThemeUri uri: uriList){
			this.baseDaoSupport.update("themeuri", uri, "id="+uri.getId());
		}
	}
	 
	public List<ThemeUri> list( ) {
		String sql ="select * from themeuri";
		return this.baseDaoSupport.queryForList(sql, ThemeUri.class);
	}

	
	public ThemeUri getPath( String uri) {
		List<ThemeUri> list = list();
		 
		for(ThemeUri themeUri:list){
			if(themeUri.getUri().equals(uri)){
				return themeUri;
			}
		}
		return null;
	}

	
	public void add(ThemeUri uri) {
		this.baseDaoSupport.insert("themeuri", uri);
	}

	
	public void delete(int id){
		this.baseDaoSupport.execute("delete from themeuri where id=? ", id);
	}

	public void edit(ThemeUri themeUri) {
		this.baseDaoSupport.update("themeuri", themeUri, "id="+themeUri.getId());
	}


}
