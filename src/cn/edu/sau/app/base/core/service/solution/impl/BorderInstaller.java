package cn.edu.sau.app.base.core.service.solution.impl;

import cn.edu.sau.eop.resource.model.Border;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import cn.edu.sau.app.base.core.service.solution.IInstaller;
import cn.edu.sau.eop.resource.IBorderManager;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.util.FileUtil;

/**
 * 挂件边框安装器

 */
public class BorderInstaller implements IInstaller {
	private IBorderManager borderManager;
 
	public void install(String productId,  Node fragment) {

		try {
		///	this.borderManager.clean();
			FileUtil.copyFolder(
					EopSetting.PRODUCTS_STORAGE_PATH + "/" + productId + "/borders/",
					EopSetting.EOP_PATH +EopContext.getContext().getContextPath()+ "/borders/");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("安装borders出错...");
		}
		
		
		if (fragment.getNodeType() == Node.ELEMENT_NODE) {
			Element themeNode = (Element) fragment;
			 NodeList nodeList = themeNode.getChildNodes();
			 for( int i=0;i<nodeList.getLength();i++){
				 Node node  = nodeList.item(i);
				 if(node.getNodeType() ==  Node.ELEMENT_NODE){
					 Element el = (Element) node;
					 String id  = el.getAttribute("id");
					 String name  = el.getAttribute("name");
					 Border border = new Border();
					 border.setBorderid(id);
					 border.setBordername(name);
					 border.setThemepath(themeNode.getAttribute("id"));
					 borderManager.add(border);
				 }
			 }

		}
	}
	public void setBorderManager(IBorderManager borderManager) {
		this.borderManager = borderManager;
	}
	

}
