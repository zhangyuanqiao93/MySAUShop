package cn.edu.sau.eop.processor.core;

import java.io.InputStream;

/**
 */
public interface Response {

	public String getContent();
	
	public InputStream getInputStream();

	public String getStatusCode();

	public String getContentType();
	
	

	/**
	 * 
	 * @param content
	 */
	public void setContent(String content);

	/**
	 * 
	 * @param code
	 */
	public void setStatusCode(String code);

	/**
	 * 
	 * @param contentType
	 */
	public void setContentType(String contentType);

}