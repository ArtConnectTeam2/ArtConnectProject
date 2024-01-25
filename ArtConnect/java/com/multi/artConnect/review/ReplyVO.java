package com.multi.artConnect.review;

import java.util.Date;

public class ReplyVO {
	private int replyNO;
	private String memberID;
	private String replyContent;
	private Date replyDate;
	private int reviewNO;
	
	
	public int getReplyNO() {
		return replyNO;
	}
	public void setReplyNO(int replyNO) {
		this.replyNO = replyNO;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public int getReviewNO() {
		return reviewNO;
	}
	public void setReviewNO(int reviewNO) {
		this.reviewNO = reviewNO;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [replyNO=" + replyNO + ", memberID=" + memberID + ", replyContent=" + replyContent
				+ ", replyDate=" + replyDate + ", reviewNO=" + reviewNO + "]";
	}
	
	

}
