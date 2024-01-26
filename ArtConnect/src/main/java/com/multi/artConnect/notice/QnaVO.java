package com.multi.artConnect.notice;

public class QnaVO {

	private int qnaNO;
	private String qnaTitle;
	private String memberID;
	private String qnaRegdate;
	private String qnaContent;	
	private int qnaHit;
	
	public int getQnaNO() {
		return qnaNO;
	}
	public void setQnaNO(int qnaNO) {
		this.qnaNO = qnaNO;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getQnaRegdate() {
		return qnaRegdate;
	}
	public void setQnaRegdate(String qnaRegdate) {
		this.qnaRegdate = qnaRegdate;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public int getQnaHit() {
		return qnaHit;
	}
	public void setQnaHit(int qnaHit) {
		this.qnaHit = qnaHit;
	}
	
	@Override
	public String toString() {
		return "QnaVO [qnaNO=" + qnaNO + ", qnaTitle=" + qnaTitle + ", memberID=" + memberID + ", qnaRegdate="
				+ qnaRegdate + ", qnaContent=" + qnaContent + ", qnaHit=" + qnaHit + "]";
	}
	
	

	
}
