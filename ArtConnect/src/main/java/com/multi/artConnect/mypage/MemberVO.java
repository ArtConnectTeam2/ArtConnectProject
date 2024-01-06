package com.multi.artConnect.mypage;

public class MemberVO {

	private String id_member;
	private String pw;
	private String name;
	private String birth;
	private String gender;
	private String addr;
	private String tel;
	private String alarm;
	private String email;
	
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id_member=" + id_member + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", gender="
				+ gender + ", addr=" + addr + ", tel=" + tel + ", alarm=" + alarm + ", email=" + email + "]";
	}
	

	
}
