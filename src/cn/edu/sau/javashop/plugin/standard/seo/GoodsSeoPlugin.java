package cn.edu.sau.javashop.plugin.standard.seo;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.processor.core.freemarker.FreeMarkerPaser;
import cn.edu.sau.javashop.core.plugin.goods.AbstractGoodsPlugin;
import cn.edu.sau.javashop.core.model.Goods;


/**
 * 商品SEO优化插件
 *
 */
public class GoodsSeoPlugin extends AbstractGoodsPlugin {
	
 
	
	public void addTabs(){
		 this.addTags(4, "搜索优化");
	}
	
	public void registerPages(){	 
		//this.registerPage("goods_add.tabcontent", "/plugin/seo/seo.jsp?ajax=yes");
	}

 

	public void onBeforeGoodsAdd(Map goods, HttpServletRequest request) {

	}
 
	
	public String onFillGoodsAddInput(HttpServletRequest request) {
		FreeMarkerPaser freeMarkerPaser =FreeMarkerPaser.getInstance();
		freeMarkerPaser.setPageName("seo");
		return freeMarkerPaser.proessPageContent();
	}

	public String onFillGoodsEditInput(Map goods, HttpServletRequest request) {
		FreeMarkerPaser freeMarkerPaser = new FreeMarkerPaser(getClass());
		freeMarkerPaser.setPageName("seo");
		freeMarkerPaser.putData("goods", goods);
		return freeMarkerPaser.proessPageContent();
	}

	public void onAfterGoodsAdd(Goods goods, HttpServletRequest request) throws RuntimeException {
		
		
	}

	
	public void onAfterGoodsAdd(Map goods, HttpServletRequest request)  {
		
		
	}

	public void onBeforeGoodsEdit(Map goods, HttpServletRequest request)  {
		
		
	}
	
	

	public void onAfterGoodsEdit(Map goods, HttpServletRequest request)  {
		
		
	}

	public String getAuthor() {
		
		return "kingapex";
	}

	public String getId() {
		
		return "goodsseo";
	}

	public String getName() {
		 
		return "商品SEO优化插件";
	}

	public String getType() {
		
		return "";
	}

	public String getVersion() {
		
		return "1.0";
	}

	public void perform(Object... params) {
		
		
	}
	
}
