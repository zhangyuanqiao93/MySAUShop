package cn.edu.sau.javashop.core.plugin.goods;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 商品修改前事件
 * 
 * @author zyq
 * 
 */
public interface IGoodsBeforeEditEvent {
 
	
	public void onBeforeGoodsEdit(Map goods, HttpServletRequest request);

}
