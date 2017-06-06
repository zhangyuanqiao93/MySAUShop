package cn.edu.sau.javashop.core.service.batchimport;

import java.util.Map;

import cn.edu.sau.javashop.core.model.ImportDataSource;
import org.w3c.dom.Element;


/**
 * 商品数据导入器接口

 *
 */
public interface IGoodsDataImporter {
	
	/**
	 * 导入
	 * @param node
	 */
	public void imported(Object value, Element node, ImportDataSource importDs, Map goods);
	
	
}
