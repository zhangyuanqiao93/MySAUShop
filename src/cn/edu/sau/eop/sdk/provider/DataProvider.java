package cn.edu.sau.eop.sdk.provider;

import java.util.Map;

/**

 */
public interface DataProvider {

	/**
	 * 
	 * @param param
	 */
	public Object load(Map<String, String> params);

}