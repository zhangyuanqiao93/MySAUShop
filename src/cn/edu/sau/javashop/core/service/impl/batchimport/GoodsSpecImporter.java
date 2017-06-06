package cn.edu.sau.javashop.core.service.impl.batchimport;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.w3c.dom.Element;

import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.javashop.core.model.ImportDataSource;
import cn.edu.sau.javashop.core.model.Product;
import cn.edu.sau.javashop.core.service.IProductManager;
import cn.edu.sau.javashop.core.service.batchimport.IGoodsDataImporter;

/**
 * 商品规格导入器
 * 此规格导入器，商品是未开启规格的

 */
public class GoodsSpecImporter implements IGoodsDataImporter {
	protected IProductManager productManager;
	protected IDaoSupport daoSupport;
	@Override
	public void imported(Object value, Element node, ImportDataSource importDs,
			Map goods) {
		Integer goodsid  = (Integer )goods.get("goods_id");
		Product product = new Product();
		product.setGoods_id(goodsid);
		product.setCost(  Double.valueOf( ""+goods.get("cost") ) );
		product.setPrice(   Double.valueOf( ""+goods.get("price"))  );
		product.setSn((String)goods.get("sn"));
		product.setStore(Integer.valueOf(""+goods.get("store")));
		product.setWeight(Double.valueOf( ""+goods.get("weight")));
		product.setName((String)goods.get("name"));
		
		
		List<Product> productList = new ArrayList<Product>();
		productList.add(product);
		this.productManager.add(productList);
	}
	public IProductManager getProductManager() {
		return productManager;
	}
	public void setProductManager(IProductManager productManager) {
		this.productManager = productManager;
	}
	public IDaoSupport getDaoSupport() {
		return daoSupport;
	}
	public void setDaoSupport(IDaoSupport daoSupport) {
		this.daoSupport = daoSupport;
	}

}
