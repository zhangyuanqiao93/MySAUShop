package cn.edu.sau.app.base.core.model;

/**
 * 问题回复
 */
public class Reply {
	
	private Integer replyid;
	private Integer askid;
	private String content;
	private String username;
	private long dateline;
	public Integer getReplyid() {
		return replyid;
	}
	public void setReplyid(Integer replyid) {
		this.replyid = replyid;
	}
	public Integer getAskid() {
		return askid;
	}
	public void setAskid(Integer askid) {
		this.askid = askid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getDatelineLong() {
		return dateline;
	}
	public void setDateline(long dateline) {
		this.dateline = dateline;
	}

	
}
