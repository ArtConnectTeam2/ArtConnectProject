package com.multi.artConnect.notice;

public class NoticeVO {
	
	private int noticeNO;
	private String noticeID;
	private String noticeName;
	private String noticeTitle;
	private String noticeContent;
	private String noticeRegdate;
	private int noticeHit;
	
	//검색필터
	private String type; //검색타입
	private String keyworld; //검색내용
	
	
	public int getNoticeNO() {
		return noticeNO;
	}
	public void setNoticeNO(int noticeNO) {
		this.noticeNO = noticeNO;
	}
	public String getNoticeID() {
		return noticeID;
	}
	public void setNoticeID(String noticeID) {
		this.noticeID = noticeID;
	}
	public String getNoticeName() {
		return noticeName;
	}
	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeRegdate() {
		return noticeRegdate;
	}
	public void setNoticeRegdate(String noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}
	public int getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyworld() {
		return keyworld;
	}
	public void setKeyworld(String keyworld) {
		this.keyworld = keyworld;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [noticeNO=" + noticeNO + ", noticeID=" + noticeID + ", noticeName=" + noticeName
				+ ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", noticeRegdate="
				+ noticeRegdate + ", noticeHit=" + noticeHit + ", type=" + type + ", keyworld=" + keyworld + "]";
	}
	


}
