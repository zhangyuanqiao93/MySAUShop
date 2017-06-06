package cn.edu.sau.app.base.widget.adv.flash;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.app.base.core.model.AdColumn;
import cn.edu.sau.app.base.core.model.Adv;
import cn.edu.sau.app.base.widget.abstractadv.AbstractAdvWidget;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;

public class FlashAdvWidget extends AbstractAdvWidget {

	
	protected void execute(AdColumn adColumn, List<Adv> advList) {
		StringBuffer imgs = new StringBuffer();
		StringBuffer urls = new StringBuffer();
		StringBuffer titles = new StringBuffer();
		for (Adv adv : advList) {
			if(imgs.length()!=0)imgs.append("|");
			imgs.append(adv.getAtturl());
			if(urls.length()!=0)urls.append("|");
			HttpServletRequest request  = ThreadContextHolder.getHttpRequest();
			urls.append(request.getContextPath() +"/core/adv!click."+EopSetting.EXTENSION+"?advid="+adv.getAid());
			if(titles.length()!=0)titles.append("|");
			titles.append(adv.getAname());
		}
		this.putData("imgs", imgs.toString());
		this.putData("urls", urls.toString());
		this.putData("titles", titles.toString());
		this.putData("width", adColumn.getWidth().replaceAll("px", ""));
		this.putData("height", adColumn.getHeight().replaceAll("px", ""));
	}

}
