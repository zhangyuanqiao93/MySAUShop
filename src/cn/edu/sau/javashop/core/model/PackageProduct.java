package cn.edu.sau.javashop.core.model;

/**
 * 捆绑商品

 */
public class PackageProduct  implements java.io.Serializable {
	private int product_id;
	private int goods_id;
	private Double discount;
	private int pkgnum;
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int productId) {
		product_id = productId;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goodsId) {
		goods_id = goodsId;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public int getPkgnum() {
		return pkgnum;
	}
	public void setPkgnum(int pkgnum) {
		this.pkgnum = pkgnum;
	}
}
