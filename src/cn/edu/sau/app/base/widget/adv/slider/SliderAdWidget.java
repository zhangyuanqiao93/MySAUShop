package cn.edu.sau.app.base.widget.adv.slider;

import java.util.List;

import cn.edu.sau.app.base.core.model.AdColumn;
import cn.edu.sau.app.base.core.model.Adv;
import cn.edu.sau.app.base.widget.abstractadv.AbstractAdvWidget;

public class SliderAdWidget extends AbstractAdvWidget {

	
	protected void execute(AdColumn adColumn, List<Adv> advList) {
		this.putData("adColumn", adColumn);
		this.putData("advList", advList);
		this.putData("width", adColumn.getWidth());
		this.putData("height", adColumn.getHeight());
	}

}
