package cn.edu.sau.cms.widget;

import java.util.List;
import java.util.Map;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.cms.core.service.IDataCatManager;
import cn.edu.sau.cms.core.service.IDataManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 静态数据列表挂件
 */
public class StaticDataListWidget extends AbstractWidget {
	private IDataManager dataManager;
	private IDataCatManager dataCatManager;
	@Override
	protected void config(Map<String, String> params) {
		
	}

	@Override
	protected void display(Map<String, String> params) {
		
		Integer catid  = Integer.valueOf( params.get("catid") );
		String countStr= params.get("count");
		String term  = params.get("term");
		
		String showchilds = params.get("showchild");//是否显示子站数据 yes/no
		boolean showchild = showchilds==null?false:(showchilds.trim().toUpperCase().equals("YES"));
		
		
		//排序，规则是：已有" order by "，应直接写后面的内容，如<orders>name desc,sort desc</orders> 
		/**
		 * 网友洪(2134535)提供
		 */
		String  orders = params.get("orders");
		
		Integer count =StringUtil.isEmpty(countStr) ?10: Integer.valueOf( countStr);
		Page page = dataManager.listAll(catid,term,orders, showchild, 1, count);
		List articleList = (List)page.getResult();
		
		this.putData("dataList", articleList);
//
//		DataCat cat  =this.dataCatManager.get(Integer.valueOf(catid));
//		
//		Nav nav = new Nav();
//		nav.setTitle("首页");
//		nav.setLink("index.html");
//		nav.setTips("首页");
//		this.putNav(nav);
//		
//		Nav nav1 = new Nav();
//		nav1.setTitle(cat.getName() );
//		nav1.setTips(cat.getName());
//		this.putNav(nav1);				
	}

	public IDataManager getDataManager() {
		return dataManager;
	}

	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}

	public IDataCatManager getDataCatManager() {
		return dataCatManager;
	}

	public void setDataCatManager(IDataCatManager dataCatManager) {
		this.dataCatManager = dataCatManager;
	}
	
	

}
