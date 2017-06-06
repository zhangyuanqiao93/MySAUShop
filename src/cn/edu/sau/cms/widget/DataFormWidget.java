package cn.edu.sau.cms.widget;

import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.edu.sau.cms.core.plugin.IFieldDispalyEvent;
import cn.edu.sau.eop.resource.model.EopSite;
import cn.edu.sau.cms.core.model.DataField;
import cn.edu.sau.cms.core.plugin.ArticlePluginBundle;
import cn.edu.sau.cms.core.service.IDataManager;
import cn.edu.sau.cms.core.service.IDataFieldManager;
import cn.edu.sau.eop.sdk.context.EopContext;
import cn.edu.sau.eop.sdk.context.EopSetting;
import cn.edu.sau.eop.sdk.utils.FreeMarkerUtil;
import cn.edu.sau.eop.sdk.widget.AbstractWidget;
import cn.edu.sau.framework.context.webcontext.ThreadContextHolder;
import cn.edu.sau.framework.plugin.IPlugin;
import cn.edu.sau.framework.util.StringUtil;
import com.sun.xml.messaging.saaj.util.ByteOutputStream;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * 数据表单挂件
 * @author zyq
 * 2010-7-6下午02:25:23
 */
public class DataFormWidget extends AbstractWidget {
	
	private IDataManager dataManager;
	private IDataFieldManager dataFieldManager;
	private ArticlePluginBundle articlePluginBundle;
	@Override
	protected void config(Map<String, String> params) {

	}

	@Override
	protected void display(Map<String, String> params) {

		HttpServletRequest request = ThreadContextHolder.getHttpRequest();
		String action = request.getParameter("action");
		if("post".equals( action)){
			try{
				Integer modelid = Integer.valueOf( request.getParameter("modelid"));
				Integer catid =Integer.valueOf( request.getParameter("catid"));
				dataManager.add(modelid, catid);
				this.setPageFolder("/commons");
				this.setPageName("json");
				this.putData("json", "{result:1}");
			}catch(RuntimeException e){
				this.logger.error(e.getMessage(), e);
				this.putData("json", "{result:0,message:'"+e.getMessage()+"'}");
			}
		}else{
			
			Integer modelid = Integer.valueOf(params.get("modelid"));
			Integer catid = Integer.valueOf(params.get("catid"));
			this.putData("modelid", modelid);
			this.putData("catid", catid);
			
			String page  = params.get("formpage");
			String folder  = params.get("folder");

			String message=  params.get("message");
			message = StringUtil.isEmpty( message )? "信息提交成功":message;
			this.putData("message", message);
			String html = this.getFormHtml(modelid,page, folder);
			this.putData("html",html);
			
		}
		
	}
	
	private String getFormHtml(Integer modelid,String page,String folder){
		Map data  = new HashMap();
		data.put("modelid", modelid);
		List<DataField> fieldList  = dataFieldManager.list(modelid);
		for(DataField field: fieldList){
			IPlugin plugin = articlePluginBundle.findPlugin(field.getShow_form());
			if(plugin!=null){
				if(plugin instanceof IFieldDispalyEvent){
					String inpuhtml =((IFieldDispalyEvent)plugin).onDisplay(field, null);
					data.put(field.getEnglish_name()+"_input", inpuhtml);
				}
			}
		}
		

		
		
		EopSite site  = EopContext.getContext().getCurrentSite();
		String contextPath  = EopContext.getContext().getContextPath();
		if(StringUtil.isEmpty(folder)){
			folder =(contextPath+"/themes/"+site.getThemepath());
		}else{
			folder = (contextPath+"/themes/"+site.getThemepath()+"/"+folder);
		}				
		try{
			Configuration cfg = FreeMarkerUtil.getFolderCfg(EopSetting.EOP_PATH +folder);
			Template temp = cfg.getTemplate(page+".html");
			ByteOutputStream stream = new ByteOutputStream();
			
			Writer out = new OutputStreamWriter(stream);
			temp.process(data, out);
			
			out.flush();
			String html = stream.toString();		
			
			return html;
		}
		catch(Exception e){
			this.logger.error(e.getMessage(), e);
			return "挂件解析出错"+e.getMessage();
		}
		
	}
	 

	public IDataManager getDataManager() {
		return dataManager;
	}

	public void setDataManager(IDataManager dataManager) {
		this.dataManager = dataManager;
	}

	public IDataFieldManager getDataFieldManager() {
		return dataFieldManager;
	}

	public void setDataFieldManager(IDataFieldManager dataFieldManager) {
		this.dataFieldManager = dataFieldManager;
	}

	public ArticlePluginBundle getArticlePluginBundle() {
		return articlePluginBundle;
	}

	public void setArticlePluginBundle(ArticlePluginBundle articlePluginBundle) {
		this.articlePluginBundle = articlePluginBundle;
	}

}
