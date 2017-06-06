package cn.edu.sau.javashop.widget.comments2;

import java.util.Map;

import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.javashop.core.service.ICommentsManager;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;

public class CommentNumWidget extends AbstractWidget {

	private ICommentsManager commentsManager;
	protected void config(Map<String, String> params) {
		
	}

	protected void display(Map<String, String> params) {
		Map goods  = (Map) ThreadContextHolder.getHttpRequest().getAttribute("goods");
		if(goods==null) throw new RuntimeException("商品评论挂件必须和商品详细显示挂件同时存在");
		String commenttype = params.get("commenttype");
		Map commentNum = this.commentsManager.coutObejctNum(commenttype, (Integer)goods.get("goods_id"));
		this.putData("commentNum", commentNum);
	}

	public ICommentsManager getCommentsManager() {
		return commentsManager;
	}

	public void setCommentsManager(ICommentsManager commentsManager) {
		this.commentsManager = commentsManager;
	}
}
