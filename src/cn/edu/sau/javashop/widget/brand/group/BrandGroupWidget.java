package cn.edu.sau.javashop.widget.brand.group;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.service.IBrandManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

/**
 * 按商品分类第一级分组显示品牌
 * @author zyq<br/>
 * 2010-12-10 下午04:55:57<br/>
 * version 2.1.5
 */
public class BrandGroupWidget extends AbstractWidget {
	
	private IBrandManager brandManager;

	protected void config(Map<String, String> params) {

	}

	protected void display(Map<String, String> params) {
		List list = this.brandManager.groupByCat();
		this.putData("listCat", list);

	}

	public IBrandManager getBrandManager() {
		return brandManager;
	}

	public void setBrandManager(IBrandManager brandManager) {
		this.brandManager = brandManager;
	}
	
	

}
