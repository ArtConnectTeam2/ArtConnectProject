package com.multi.artConnect.notice;

public class QnaVO {

	private int qnaNO;
	private String qnaTitle;
	private String qnaID;
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
	public String getQnaID() {
		return qnaID;
	}
	public void setQnaID(String qnaID) {
		this.qnaID = qnaID;
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
		return "QnaVO [qnaNO=" + qnaNO + ", qnaTitle=" + qnaTitle + ", qnaID=" + qnaID + ", qnaRegdate=" + qnaRegdate
				+ ", qnaContent=" + qnaContent + ", qnaHit=" + qnaHit + "]";
	}
	
}
