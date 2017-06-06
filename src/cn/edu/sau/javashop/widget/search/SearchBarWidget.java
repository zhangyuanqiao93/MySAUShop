package cn.edu.sau.javashop.widget.search;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.util.StringUtil;

public class SearchBarWidget extends AbstractWidget {

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
		String keyword = (String)request.getAttribute("keyword");
		
		String encoding  = EopSetting.ENCODING;
		if(!StringUtil.isEmpty(encoding)){
			keyword = StringUtil.to(keyword,encoding);
		}
		
		this.putData("keyword", keyword);
		this.setPageName("search_bar");
	}

}
