package cn.edu.sau.app.base.widget.adv.fadeplay;

import java.util.List;

import cn.edu.sau.app.base.core.model.AdColumn;
import cn.edu.sau.app.base.core.model.Adv;
import cn.edu.sau.app.base.widget.abstractadv.AbstractAdvWidget;

public class FadePlayWidget extends AbstractAdvWidget {

	@Override
	protected void execute(AdColumn adColumn, List<Adv> advList) {
		this.putData("advlist", advList);
	}

}
