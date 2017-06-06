package cn.edu.sau.eop.processor;


/**
 * 页面包装器
 */
public class PageWrapper implements IPagePaser {
	protected IPagePaser pagePaser;
	public PageWrapper(IPagePaser paser){
		this.pagePaser = paser;
	}
	
	public String pase(String url) {
		 
		return this.pagePaser.pase(url);
	}

}
