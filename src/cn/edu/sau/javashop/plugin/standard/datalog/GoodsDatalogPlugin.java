package cn.edu.sau.javashop.plugin.standard.datalog;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.eop.resource.IDataLogManager;
import cn.edu.sau.javashop.core.plugin.goods.IGoodsAfterAddEvent;
import cn.edu.sau.app.base.core.model.DataLog;
import cn.edu.sau.eop.sdk.utils.UploadUtil;
import cn.edu.sau.framework.plugin.AutoRegisterPlugin;
import cn.edu.sau.framework.util.StringUtil;
import cn.edu.sau.javashop.core.plugin.goods.IGoodsAfterEditEvent;

/**
 * 商品数据日志记录插件 

 */
public class GoodsDatalogPlugin extends AutoRegisterPlugin implements
        IGoodsAfterAddEvent, IGoodsAfterEditEvent {
	private IDataLogManager dataLogManager;
	
	public void register() {
		
	}

	
	public void onAfterGoodsAdd(Map goods, HttpServletRequest request)
			throws RuntimeException {
		
		DataLog datalog  = this.createDataLog(goods);
		datalog.setOptype("添加");
		this.dataLogManager.add(datalog);
		
	}

	
	public void onAfterGoodsEdit(Map goods, HttpServletRequest request) {
		DataLog datalog  = this.createDataLog(goods);
		datalog.setOptype("修改");
		this.dataLogManager.add(datalog);
	}
	
	
	private DataLog createDataLog(Map goods){
		
		DataLog datalog  = new DataLog();
		datalog.setContent("商品名:"+goods.get("name")+"<br>"+"描述:"+goods.get("intro"));
		String  image_file =(String) goods.get("image_file");
		
		StringBuffer pics  = new StringBuffer();
		if( !StringUtil.isEmpty(image_file)) {
			String[] files = image_file.split(",");
			for(String file:files){
				if(pics.length()>0)
					pics.append(",");
				pics.append( UploadUtil.getThumbPath(file, "_thumbnail") );
				pics.append("|");
				pics.append(file );
			}
		}
		
		datalog.setPics(pics.toString());
		datalog.setLogtype("商品");
		datalog.setOptype("添加");
		datalog.setUrl("/goods-"+goods.get("goods_id")+".html");
		
		return datalog;
		
		
	}

	
	public String getAuthor() {
		
		return "kingapex";
	}

	
	public String getId() {
		
		return "goodsdatalog";
	}

	
	public String getName() {
		
		return "商品数据日志记录插件";
	}

	
	public String getType() {
		
		return "datalog";
	}

	
	public String getVersion() {
		
		return "1.0";
	}

	
	public void perform(Object... params) {
		

	}


	public IDataLogManager getDataLogManager() {
		return dataLogManager;
	}


	public void setDataLogManager(IDataLogManager dataLogManager) {
		this.dataLogManager = dataLogManager;
	}

}
