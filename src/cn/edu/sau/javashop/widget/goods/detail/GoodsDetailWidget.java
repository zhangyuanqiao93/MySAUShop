package cn.edu.sau.javashop.widget.goods.detail;

import java.util.Map;

import cn.edu.sau.framework.database.ObjectNotFoundException;
import cn.edu.sau.app.base.widget.header.HeaderConstants;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

/**
 * 商品详细挂件</br>
 * @author zyq
 */
public class GoodsDetailWidget extends AbstractWidget {
	 

	protected void  display(Map<String, String> params) {
		
		try{
		 Map goodsMap=  (Map)ThreadContextHolder.getHttpRequest().getAttribute("goods");
		 
		 if(goodsMap.get("page_title")!=null &&!goodsMap.get("page_title").equals("") )
			this.putData(HeaderConstants.title, goodsMap.get("page_title"));
		 else
			 this.putData(HeaderConstants.title, goodsMap.get("name") );
		 
		 if(goodsMap.get("meta_keywords")!=null &&!goodsMap.get("meta_keywords").equals("")  )
			this.putData(HeaderConstants.keywords,goodsMap.get("meta_keywords"));
		 
		 if(goodsMap.get("meta_description")!=null &&!goodsMap.get("meta_description").equals("") )
			this.putData(HeaderConstants.description,goodsMap.get("meta_description"));
		  
		}catch(ObjectNotFoundException e){
			
			this.setPageName("notfound");
		}
	}
	
	protected void config(Map<String, String> params) {
		this.showHtml=false;
	}


	
	public static void main(String[] args){
	}

	
}
