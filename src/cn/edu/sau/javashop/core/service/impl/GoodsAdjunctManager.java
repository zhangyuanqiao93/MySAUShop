package cn.edu.sau.javashop.core.service.impl;

import java.util.List;
import java.util.Map;

import cn.edu.sau.eop.sdk.database.BaseSupport;
import cn.edu.sau.javashop.core.model.GoodsAdjunct;
import cn.edu.sau.javashop.core.service.IGoodsAdjunctManager;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public class GoodsAdjunctManager extends BaseSupport implements
        IGoodsAdjunctManager {

	
	public List<Map> list(int goods_id) {
		String sql = "select * from goods_adjunct where goods_id = ?";
		List list = this.baseDaoSupport.queryForList(sql, goods_id);
		return list;
	}

	
	@Transactional(propagation = Propagation.REQUIRED)
	public void save(int goods_id, List<GoodsAdjunct> list) {
		//删除原有
		String deleteSql = "delete from goods_adjunct where goods_id = ?";
		this.baseDaoSupport.execute(deleteSql, goods_id);
		
		//依次加入
		for(GoodsAdjunct adjunct:list){
			this.add(adjunct);
		}
	}
	
	private void add(GoodsAdjunct adjunct) {
		this.baseDaoSupport.insert("goods_adjunct", adjunct);
	}

}
