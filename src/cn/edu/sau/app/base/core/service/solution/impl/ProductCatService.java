package cn.edu.sau.app.base.core.service.solution.impl;

import java.util.List;

import cn.edu.sau.framework.database.Page;
import cn.edu.sau.app.base.core.model.ProductCat;
import cn.edu.sau.app.base.core.service.solution.IProductCatService;
import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.framework.util.StringUtil;


/**
 * 解决方案分类管理实现 

 */
public class ProductCatService extends BaseSupport<ProductCat> implements IProductCatService {

	
	public void add(ProductCat cat) {
		if(StringUtil.isEmpty(cat.getName()) ) throw new IllegalArgumentException("argument  cat.name is null");
		cat.setNum(0);		
		this.daoSupport.insert("eop_product_cat", cat);
	}

	
	
	
	public int detete(int id) {
		String sql ="select count(0) from eop_product where catid=?";
		int count  = this.daoSupport.queryForInt(sql, id);
		if(count>0){
			return 2;
		}
		sql  ="delete from eop_product_cat where id=?";
		this.daoSupport.execute(sql, id);
		return 1;
		
	}

	
	public void edit(ProductCat cat) {
		if(cat.getId()==0) throw new IllegalArgumentException("argument  cat.id is null");
		if(StringUtil.isEmpty(cat.getName()) ) throw new IllegalArgumentException("argument  cat.name is null");
		this.daoSupport.update("eop_product_cat", cat, "id="+cat.getId());
	}

	
	
	public List<ProductCat> list() {
		String sql  ="select * from eop_product_cat order by sort desc";
		return this.daoSupport.queryForList(sql, ProductCat.class);
	}

	
	public Page list(int pageNo, int pageSize) {
		String sql  ="select * from eop_product_cat order by sort desc";
		return this.daoSupport.queryForPage(sql, pageNo, pageSize);
	}

	public ProductCat get(int id) {
		
		return this.daoSupport.queryForObject("select * from eop_product_cat where id=?", ProductCat.class, id);
	}

}
