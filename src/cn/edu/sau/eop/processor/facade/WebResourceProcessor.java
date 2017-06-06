package cn.edu.sau.eop.processor.facade;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.sau.eop.processor.Processor;
import cn.edu.sau.eop.processor.core.ContextType;
import cn.edu.sau.eop.processor.core.InputStreamResponse;
import cn.edu.sau.eop.processor.core.Response;
/**
 * web资源处理器
 */
public class WebResourceProcessor implements Processor {

	
	public Response process(int mode, HttpServletResponse httpResponse,
			HttpServletRequest httpRequest) {
		String path  = httpRequest.getServletPath();
	
		path = path.replaceAll("/resource/","");
	 
	 
		try{
			InputStream in =   getClass().getClassLoader().getResourceAsStream(path);
			Response response  = new InputStreamResponse(in);
			
			//IWebResourceReader reader  = new WebResourceReader();
		///	response.setContent(reader.read(path));
			 
			if(path.toLowerCase().endsWith(".js")) response.setContentType(ContextType.JAVASCRIPT);
			if(path.toLowerCase().endsWith(".css")) response.setContentType(ContextType.CSS);
			if(path.toLowerCase().endsWith(".jpg")) response.setContentType(ContextType.JPG);
			if(path.toLowerCase().endsWith(".gif")) response.setContentType(ContextType.GIF);
			if(path.toLowerCase().endsWith(".png")) response.setContentType(ContextType.PNG);
			if(path.toLowerCase().endsWith(".swf")) response.setContentType(ContextType.FLASH);
			
			return response;
		}catch(RuntimeException e){
			//response.setContent(e.getMessage());
			e.printStackTrace();
			return null;
		}
		
		
	}

}
