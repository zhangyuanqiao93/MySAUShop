package cn.edu.sau.javashop.core.plugin.goods;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 商品修改完成事件

 * 
 */
public interface IGoodsAfterEditEvent {
	
	public void onAfterGoodsEdit(Map goods, HttpServletRequest request);

}
