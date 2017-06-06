package cn.edu.sau.javashop.widget.setting;

import java.util.List;

import cn.edu.sau.javashop.core.model.Tag;
import cn.edu.sau.javashop.core.service.ITagManager;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsListSetting extends ActionSupport{
	private ITagManager tagManager ;
	private List<Tag> tagList;
	
	public String execute(){
	 
	 	
		tagList = tagManager.list();
		return this.SUCCESS;
	}
	public void setTagManager(ITagManager tagManager) {
		this.tagManager = tagManager;
	}
	public List<Tag> getTagList() {
		return tagList;
	}
	public void setTagList(List<Tag> tagList) {
		this.tagList = tagList;
	}

	
}
