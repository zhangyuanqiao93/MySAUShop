package cn.edu.sau.eop.processor.core;
import java.io.InputStream;

import cn.edu.sau.framework.util.StringUtil;


/**
 */
public class InputStreamResponse implements Response {
	
	private String contentType;
	private InputStream inputStream;
	public InputStreamResponse(InputStream in){
		this.inputStream = in;
	}



	public String getContent(){
		if(inputStream==null)
			return "";
		else
			return StringUtil.inputStream2String(this.inputStream);
	}

	public String getStatusCode(){
		return "";
	}

	public String getContentType(){
		return this.contentType;
	}

	/**
	 * 
	 * @param content
	 */
	public void setContent(String content){

	}

	/**
	 * 
	 * @param code
	 */
	public void setStatusCode(String code){

	}

	/**
	 * 
	 * @param contentType
	 */
	public void setContentType(String contentType){
		this.contentType = contentType;
	}

	
	public InputStream getInputStream() {
		
		return this.inputStream;
	}

}