package cn.edu.sau.cms.widget;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.cms.widget.pager.SearchPagerHtmlBuilder;
import cn.edu.sau.framework.database.Page;
import cn.edu.sau.cms.core.service.IDataManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.StringUtil;

/**
 * 数据搜索挂件
 */
public class DataSearchResultWidget extends AbstractWidget {

	private IDataManager dataManager;
	@Override
	protected void config(Map<String, String> params) {

	}

	@Override
	protected void display(Map<String, String> params) {
		
		String pager=params.get("pager"); //on开启，off关闭
		pager = StringUtil.isEmpty(pager) ? "on" : pager;
		Integer modelid = Integer.valueOf(params.get("modelid"));
		
		String pageSizeParam = params.get("pagesize");
		int pageSize = StringUtil.isEmpty(pageSizeParam )?20: Integer.valueOf(pageSizeParam);
		
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String pageParam = request.getParameter("page");
		int pageNo = StringUtil.isEmpty( pageParam )?1:Integer.valueOf(pageParam) ;
		
		String showchilds = params.get("showchild");//是否显示子站数据 yes/no
		boolean showchild = showchilds==null?false:(showchilds.trim().toUpperCase().equals("YES"));
		
		if("on".equals(pager)){
			Page dataPage  =dataManager.search(pageNo, pageSize, modelid);
			List dataList  = (List)dataPage.getResult();
			this.putData("dataList", dataList);
			
			
			SearchPagerHtmlBuilder pagerHtmlBuilder = new SearchPagerHtmlBuilder(pageNo, dataPage.getTotalCount(), pageSize);
			String pagerHtml =pagerHtmlBuilder.buildPageHtml();
			this.putData("pager", pagerHtml);
		}else{
			List dataList =dataManager.search(  modelid);
			this.putData("dataList", dataList);
			this.putData("pager", "<!--不分页-->");
		}
	}

	public IDataManager getDataManager() {
		return dataManager;
	}

	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}

}
