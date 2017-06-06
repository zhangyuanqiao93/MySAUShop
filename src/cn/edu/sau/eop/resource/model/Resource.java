package cn.edu.sau.eop.resource.model;

import cn.edu.sau.framework.database.NotDbField;

/**
 * 资源实体抽象类,所有的资源都有id和对应的站点id
 */
public  class Resource {
	private Integer id;
 
	private Integer deleteflag = 0;
	
	private String productId;
	

	public Integer getDeleteflag() {
		return deleteflag;
	}

	public void setDeleteflag(Integer deleteflag) {
		this.deleteflag = deleteflag;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	 
	
	@NotDbField
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	
}
