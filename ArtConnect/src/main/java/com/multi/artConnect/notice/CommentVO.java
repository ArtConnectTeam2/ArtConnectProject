package com.multi.artConnect.notice;

import java.sql.Date;

public class CommentVO {
	
	private int commentRNO;
	private int commentBNO;
	private String commentWriter;
	private String commentContent;
	private Date commentRegDate;
	
	public int getCommentRNO() {
		return commentRNO;
	}
	public void setCommentRNO(int commentRNO) {
		this.commentRNO = commentRNO;
	}
	public int getCommentBNO() {
		return commentBNO;
	}
	public void setCommentBNO(int commentBNO) {
		this.commentBNO = commentBNO;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	
	@Override
	public String toString() {
		return "CommentVO [commentRNO=" + commentRNO + ", commentBNO=" + commentBNO + ", commentWriter=" + commentWriter
				+ ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate + "]";
	}

}
