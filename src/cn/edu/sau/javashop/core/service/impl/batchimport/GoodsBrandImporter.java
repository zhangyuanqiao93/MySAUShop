package cn.edu.sau.javashop.core.service.impl.batchimport;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.model.Brand;
import cn.edu.sau.javashop.core.model.ImportDataSource;
import cn.edu.sau.javashop.core.service.batchimport.IGoodsDataImporter;
import org.w3c.dom.Element;

/**
 * 商品品牌导入器

 */
public class GoodsBrandImporter implements IGoodsDataImporter {
 
	public void imported(Object name, Element node, ImportDataSource importDs, Map goods){
		
		if(!importDs.isNewGoods())return;
		
		String brandname = (String)name;
		if(brandname==null) brandname="";
		brandname=brandname.trim();
		
		List<Brand> brandList  = importDs.getBrandList();
		for(Brand brand:brandList){
			if(brand.getName().equals(brandname)){
				goods.put("brand_id", brand.getBrand_id());
			}
		}
	}

}
