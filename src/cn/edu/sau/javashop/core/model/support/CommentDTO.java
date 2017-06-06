package cn.edu.sau.javashop.core.model.support;

import java.util.List;

import cn.edu.sau.javashop.core.model.Comments;

/**
 * 评论、咨询，包含子列表(回复列表)
 *
 * <br/>
 */
public class CommentDTO {
	private Comments comments;
	private List<Comments> list;

	public Comments getComments() {
		return comments;
	}

	public void setComments(Comments comments) {
		this.comments = comments;
	}

	public List<Comments> getList() {
		return list;
	}

	public void setList(List<Comments> list) {
		this.list = list;
	}

}
