package cn.edu.sau.javashop.core.service.impl.batchimport;

import java.util.Map;

import cn.edu.sau.javashop.core.model.ImportDataSource;
import org.w3c.dom.Element;

import cn.edu.sau.javashop.core.service.batchimport.IGoodsDataImporter;

public class GoodsPriceImporter implements IGoodsDataImporter {

	public void imported(Object value, Element node, ImportDataSource importDs,
			Map goods) {
		if( value ==null || value.equals("")) value=0;
		
		if(importDs.isNewGoods()){
			if("mkprice".equals(node.getAttribute("type"))){
				goods.put("mktprice", value) ;
			}else
			goods.put("price", value) ;
		}
	}

}
