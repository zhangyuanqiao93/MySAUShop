package cn.edu.sau.javashop.core.plugin.goods;

import javax.servlet.http.HttpServletRequest;

/**
 * 到商品添加前提供填充事件
 * @author zyq
 *
 */
public  interface IGoodsFillAddInputDataEvent {
	 
	 public String onFillGoodsAddInput(HttpServletRequest request);
	
	
} 
