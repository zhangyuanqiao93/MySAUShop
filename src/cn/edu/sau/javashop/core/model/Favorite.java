package cn.edu.sau.javashop.core.model;

/**
 * 商品收藏
 * 

 */
public class Favorite implements java.io.Serializable {
	private int favorite_id;
	private int member_id;
	private int goods_id;

	public int getFavorite_id() {
		return favorite_id;
	}

	public void setFavorite_id(int favoriteId) {
		favorite_id = favoriteId;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int memberId) {
		member_id = memberId;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goodsId) {
		goods_id = goodsId;
	}
}
