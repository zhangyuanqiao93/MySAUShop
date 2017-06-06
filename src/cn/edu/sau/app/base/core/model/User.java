package cn.edu.sau.app.base.core.model;

/**
 */
public class User {

	private Integer userId;
	private String name;
	private String code;	//Lizf add，用于用户接入验证

	/**
	 * @return
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code
	 */
	public void setCode(String code) {
		this.code = code;
	}

	public User(){

	}

	public void finalize() throws Throwable {

	}

	public Integer getUserId(){
		return userId;
	}

 

	public String getName(){
		return name;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setName(String newVal){
		name = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setUserId(Integer newVal){
		userId = newVal;
	}

}