package com.multi.artConnect.mypage;

import java.sql.Date;

public class MemberVO {
	private String memberID;
	private String memberPW;
	private String memberName;
	private Date memberBirth;
	private String memberGender;
	private String memberAddr;
	private String memberTel;
	private String memberEmail;
	private String memberAlarm;
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getMemberPW() {
		return memberPW;
	}
	public void setMemberPW(String memberPW) {
		this.memberPW = memberPW;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberAlarm() {
		return memberAlarm;
	}
	public void setMemberAlarm(String memberAlarm) {
		this.memberAlarm = memberAlarm;
	}
	
	@Override
	public String toString() {
		return "MemberVO [memberID=" + memberID + ", memberPW=" + memberPW + ", memberName=" + memberName
				+ ", memberBirth=" + memberBirth + ", memberGender=" + memberGender + ", memberAddr=" + memberAddr
				+ ", memberTel=" + memberTel + ", memberEmail=" + memberEmail + ", memberAlarm=" + memberAlarm + "]";
	}

	
}
