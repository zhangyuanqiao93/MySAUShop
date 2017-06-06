package cn.edu.sau.cms.core.taglib;

import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspException;

import cn.edu.sau.cms.core.model.DataField;
import cn.edu.sau.eop.sdk.webapp.taglib.BaseTaglibSupport;

public class ArticleFieldOutTaglib extends BaseTaglibSupport {
	
	
 
	public int doStartTag() throws JspException {
		Map article =(Map) this.pageContext.getAttribute("article");
		if(article!=null){
			List<DataField> fieldList  =(List<DataField>)this.pageContext.getAttribute("fieldList");
			if(fieldList!=null){
			for(DataField field : fieldList){
				String name =  field.getEnglish_name();
				Object value = article.get(name);
				this.print("<td>" + value+"</td>");
			}
			}
			
		}
		
		return this.EVAL_BODY_INCLUDE;
	}

	public int doAfterBody() {
	 

		return this.EVAL_PAGE;
	}
}
