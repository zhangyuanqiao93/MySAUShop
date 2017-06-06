package cn.edu.sau.javashop.widget.brand;

import java.util.List;
import java.util.Map;

import cn.edu.sau.javashop.core.service.IBrandManager;
import cn.edu.sau.app.base.widget.nav.Nav;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

/**
 * 品牌

 */
public class BrandWidget extends AbstractWidget {
	
	private IBrandManager brandManager;

	
	protected void config(Map<String, String> params) {

	}

	
	protected void display(Map<String, String> params) {
		this.setPageName("brand");
		List listBrand = brandManager.list();
		this.putData("listBrand", listBrand);
		Nav nav = new Nav();
		nav.setTitle("品牌专区");
		this.putNav(nav);
	}

	public IBrandManager getBrandManager() {
		return brandManager;
	}

	public void setBrandManager(IBrandManager brandManager) {
		this.brandManager = brandManager;
	}

}
