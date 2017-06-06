package cn.edu.sau.javashop.core.plugin.goods;

/**
 * 商品删除事件
 * @author zyq
 *2010-3-20下午08:27:38
 */
public interface IGoodsDeleteEvent {
	public void onGoodsDelete(Integer[] goodsid);
}
