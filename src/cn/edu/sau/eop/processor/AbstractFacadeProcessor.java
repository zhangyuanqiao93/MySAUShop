package cn.edu.sau.eop.processor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.processor.core.Request;
import cn.edu.sau.eop.processor.core.RequestFactory;
import cn.edu.sau.eop.processor.core.Response;

/**
 */
public abstract class AbstractFacadeProcessor implements Processor {

	protected FacadePage page;
	protected HttpServletRequest httpRequest;
	protected HttpServletResponse httpResponse;
	protected int mode;
	protected Request request;

	/**
	 * 
	 * @param page
	 */
	public AbstractFacadeProcessor(FacadePage page) {
		this.page = page;
	}

	/**
	 * 
	 * @param mode
	 * @param httpResponse
	 * @param httpRequest
	 */
	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {
		
		this.mode = mode;
		this.httpRequest = httpRequest;
		this.httpResponse = httpResponse;
		request = RequestFactory.getRequest(mode);
		
		return process();
	}

	protected abstract Response process();

}