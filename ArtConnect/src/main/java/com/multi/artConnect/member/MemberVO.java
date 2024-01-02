package com.multi.artConnect.member;

import java.sql.Date;

public class MemberVO {
	private String id_member;
	private String pw;
	private String name;
	private Date birth;
	private String gender;
	private String addr;
	private String tel;
	private String alarm;
	
	public String getId_member() {
		return id_member;
	}
	public void setId_member(String id_member) {
		this.id_member = id_member;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAlarm() {
		return alarm;
	}
	public void setAlarm(String alarm) {
		this.alarm = alarm;
	}
	
	@Override
	public String toString() {
		return "LoginVO [id_member=" + id_member + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", gender="
				+ gender + ", addr=" + addr + ", tel=" + tel + ", alarm=" + alarm + "]";
	}
	
	
}
