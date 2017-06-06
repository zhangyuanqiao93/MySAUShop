package cn.edu.sau.cms.widget;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.framework.util.RequestUtil;
import cn.edu.sau.cms.core.service.IDataManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**
 * 相关文章挂件
 * @author zyq
 *
 */
public class RelatedDataWidget extends AbstractWidget {
	private IDataManager dataManager;
	protected void config(Map<String, String> params) {
		
	}

	protected void display(Map<String, String> params) {
		String fieldname = params.get("fieldname");
		String catidStr  = params.get("catid");
		Integer[] ids= this.paseId();
		Integer articleid = ids[0];
		Integer catid = ids[1];
		
		int relcatid  = Integer.valueOf( catidStr );
 
		
		List dataList =dataManager.listRelated(catid,relcatid, articleid, fieldname);
		this.putData("dataList", dataList);
		
	}
	
	private Integer[] paseId(){
		HttpServletRequest httpRequest = ThreadContextHolder.getHttpRequest();
		String url = RequestUtil.getRequestUrl(httpRequest);
		String pattern = "/(.*)-(\\d+)-(\\d+).html(.*)";
		String id = null;
		String catid = null;
		Pattern p = Pattern.compile(pattern, 2 | Pattern.DOTALL);
		Matcher m = p.matcher(url);
		if (m.find()) {
			id = m.replaceAll("$3");
			catid = m.replaceAll("$2");
		}		
		
		return new Integer[]{Integer.valueOf(""+id),Integer.valueOf(""+catid)};
	}

	
	

	public IDataManager getDataManager() {
		return dataManager;
	}

	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}

}
