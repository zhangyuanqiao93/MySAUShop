package cn.edu.sau.app.base.widget.adv;

import java.util.List;

import cn.edu.sau.app.base.core.model.AdColumn;
import cn.edu.sau.app.base.core.model.Adv;
import cn.edu.sau.app.base.widget.abstractadv.AbstractAdvWidget;

/**
 * 广告列表挂件
 * 使用者需要自定义挂件 页面

 */
public class AdvListWidget extends AbstractAdvWidget {

	@Override
	protected void execute(AdColumn adColumn, List<Adv> advList) {
		String adwidth = adColumn.getWidth();
		String adheight = adColumn.getHeight();
		int atype = adColumn.getAtype();
	 
		this.putData("advList", advList);
		this.putData("adwidth", adwidth);
		this.putData("adheight", adheight);
		this.putData("atype", atype);
	}

}
