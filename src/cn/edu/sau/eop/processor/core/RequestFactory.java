package cn.edu.sau.eop.processor.core;

import cn.edu.sau.eop.sdk.context.ConnectType;


/**
 */
public abstract class RequestFactory {




	public static Request getRequest(int model){
		
		
		Request request = null;
		
		if(model==ConnectType.remote)
			request = new RemoteRequest();
		
		if(model==ConnectType.local)
			request = new LocalRequest();
		
		return request;
	}

}