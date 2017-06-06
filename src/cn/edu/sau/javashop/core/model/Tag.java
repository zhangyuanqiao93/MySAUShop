package cn.edu.sau.javashop.core.model;

/**

 */
public class Tag implements java.io.Serializable{
	
	private Integer tag_id;
	private String tag_name;
	private Integer rel_count;
	public Integer getTag_id() {
		return tag_id;
	}
	public void setTag_id(Integer tagId) {
		tag_id = tagId;
	}
	public String getTag_name() {
		return tag_name;
	}
	public void setTag_name(String tagName) {
		tag_name = tagName;
	}
	public Integer getRel_count() {
		return rel_count;
	}
	public void setRel_count(Integer relCount) {
		rel_count = relCount;
	}
	
}
