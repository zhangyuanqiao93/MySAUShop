package cn.edu.sau.javashop.plugin.search;

import java.sql.ResultSet;
import java.util.Map;

import cn.edu.sau.javashop.core.plugin.search.IGoodsDataFilter;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.eop.sdk.utils.UploadUtil;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;

/**
 * 商品图片数据过滤器
 * @author zyq
 *
 */
public class GoodsImageDataFilter extends AutoRegisterPlugin implements IGoodsDataFilter {

	public void filter(Map<String, Object> goods, ResultSet rs) {
		String  image_file =(String) goods.get("image_file");
		if(image_file !=null ){
			image_file = UploadUtil.replacePath(image_file);
			goods.put("image_file", image_file);
		}
		
		String image_default = (String) goods.get("image_default");
		if (image_default == null || image_default.equals("")) {
			image_default =  EopSetting.IMG_SERVER_DOMAIN +"/images/no_picture.jpg";
		}else{
			image_default  =UploadUtil.replacePath(image_default); 
		}
		
		goods.put("image_default", image_default);
		
	}
	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "goodsImageDataFilter";
	}

	
	public String getName() {
		
		return "商品图片数据过滤器";
	}

	
	public String getType() {
		
		return "searchFilter";
	}

	
	public String getVersion() {
		
		return "1.0";
	}

	
	public void perform(Object... params) {
		

	}

	public void register() {
		

	}


}
