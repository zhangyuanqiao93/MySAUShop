package cn.edu.sau.eop.processor;

import cn.edu.sau.eop.processor.core.Request;

/**

 */
public abstract class AbstractFacadePageWrapper extends AbstractWrapper {

	protected FacadePage page;

	/**
	 * 
	 * @param page
	 */
	public AbstractFacadePageWrapper(FacadePage page,Request request){
		 super(request);
		 this.page = page;
	}


}