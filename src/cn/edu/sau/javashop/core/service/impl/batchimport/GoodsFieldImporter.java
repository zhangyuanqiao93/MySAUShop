package cn.edu.sau.javashop.core.service.impl.batchimport;

import java.util.Map;

import cn.edu.sau.javashop.core.model.ImportDataSource;
import org.w3c.dom.Element;

import cn.edu.sau.javashop.core.service.batchimport.IGoodsDataImporter;

/**
 * 商品字段导入器

 *
 */
public class GoodsFieldImporter implements IGoodsDataImporter{

	
	public void imported(Object value, Element node, ImportDataSource importConfig, Map goods) {
		String fieldname = node.getAttribute("fieldname");
		if(importConfig.isNewGoods())
			goods.put(fieldname, value);
	}
 

	
	
}
