package cn.edu.sau.javashop.widget.goods.detail;

import java.util.List;
import java.util.Map;

import cn.edu.sau.framework.database.IDaoSupport;
import cn.edu.sau.javashop.widget.goods.AbstractGoodsDetailWidget;

/**
 * 相关商品挂件
 *
 */
public class RelatedArticlesWidget extends AbstractGoodsDetailWidget {

	private IDaoSupport basedDaoSupport;
	protected void config(Map<String, String> params) {
		 

	}
	
	protected void execute(Map<String, String> params, Map goods) {
		String sql  ="select * from goods_articles where goodsid=?";
		List articleList  = this.baseDaoSupport.queryForList(sql, goods.get("goods_id"));
		this.putData("articleList",articleList);
	}

	public IDaoSupport getBasedDaoSupport() {
		return basedDaoSupport;
	}

	public void setBasedDaoSupport(IDaoSupport basedDaoSupport) {
		this.basedDaoSupport = basedDaoSupport;
	}

 

}
