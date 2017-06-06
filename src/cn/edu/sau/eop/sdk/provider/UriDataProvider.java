package cn.edu.sau.eop.sdk.provider;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.sdk.utils.JspUtil;

/**
40
 */
public  class UriDataProvider implements DataProvider {

	private HttpServletRequest httpRequest;
	private HttpServletResponse httpResponse;
	private String url;

	/**
	 * 
	 * @param httpRequest
	 * @param httpResponse
	 */
	public UriDataProvider(HttpServletRequest httpRequest, HttpServletResponse httpResponse,String url){
		this.httpRequest = httpRequest;
		this.httpResponse = httpResponse;
		this.url = url;
	}
	
	

	/**
	 * 
	 * @param param
	 */
	public Object load(Map<String,String> params){
		
		String content = JspUtil.getJspOutput(this.url, this.httpRequest,this.httpResponse);
		
		return content;
	}

}