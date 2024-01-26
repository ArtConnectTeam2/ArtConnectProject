package com.multi.artConnect.notice;

import java.sql.Date;

public class CommentVO {
	
	private int commentRNO;
	private int commentBNO;
	private String memberID;
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
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
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
		return "CommentVO [commentRNO=" + commentRNO + ", commentBNO=" + commentBNO + ", memberID=" + memberID
				+ ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate + "]";
	}

}
