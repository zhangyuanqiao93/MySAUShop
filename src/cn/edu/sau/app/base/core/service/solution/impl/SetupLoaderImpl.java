package cn.edu.sau.app.base.core.service.solution.impl;

import java.io.File;

import cn.edu.sau.app.base.core.service.solution.ISetupLoader;
import cn.edu.sau.framework.util.FileUtil;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

import cn.edu.sau.eop.sdk.context.EopSetting;

public class SetupLoaderImpl implements ISetupLoader {

	
	public Document load(String productId) {
		String xmlFile = EopSetting.PRODUCTS_STORAGE_PATH+"/"+productId +"/setup.xml"; 
		Document document = null;
		SAXReader saxReader = new SAXReader();
		try {
			if (FileUtil.exist(xmlFile)) {
				document = saxReader.read(new File(xmlFile));
			}

		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		} 	
		return document;
		 
	}

}
