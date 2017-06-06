package cn.edu.sau.eop.processor;
import cn.edu.sau.eop.processor.core.Request;

/**
 * 抽象的前台页面解析器<br/>
 * 包含有一个FacadePage的属性，解析器根据此属性的信息解析页面。

 */
public abstract class AbstractFacadePagetParser extends AbstractParser {

	protected FacadePage page; 


	/**
	 * 强迫调用者传递FacadePage属性
	 * @param page
	 */
	public AbstractFacadePagetParser(FacadePage page,Request request){
		 super(request);
		 this.page= page;
	}
	
	public FacadePage getPage(){
		return this.page;
	}
  

}