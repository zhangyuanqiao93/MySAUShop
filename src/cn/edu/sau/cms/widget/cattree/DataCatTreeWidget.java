package cn.edu.sau.cms.widget.cattree;

import java.util.List;
import java.util.Map;

import cn.edu.sau.cms.core.service.IDataCatManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 数据类别树挂件
 * @author zyq
 * 2010-7-7下午06:35:12
 */
public class DataCatTreeWidget extends AbstractWidget {

	private IDataCatManager dataCatManager;
	@Override
	protected void config(Map<String, String> params) {

	}

	@Override
	protected void display(Map<String, String> params) {
		Integer catid  =0;
		String catidstr = params.get("catid");
		if(!StringUtil.isEmpty(catidstr)){
			catid = Integer.valueOf(catidstr);
		}
		List catList  = dataCatManager.listAllChildren(catid);
		
		String url = params.get("url");
		url =StringUtil.isEmpty(url) ?"data" :url;
		this.putData("url", url);
		this.putData("cat_tree", catList);
	}

	public IDataCatManager getDataCatManager() {
		return dataCatManager;
	}

	public void setDataCatManager(IDataCatManager dataCatManager) {
		this.dataCatManager = dataCatManager;
	}

}
