package com.multi.artConnect.reservation;

import java.sql.Time;

public class ReservationVO {
    private int reservationID;
    private int galleryID;
    private int programID;
    private String memberID;
    private Integer reservationCount;
    private String programTitle;
    private Boolean payment;
    private String reservationTime;
    private Time galleryOpentime;
	private Time galleryClosetime;
	public Time getGalleryOpentime() {
		return galleryOpentime;
	}
	public void setGalleryOpentime(Time galleryOpentime) {
		this.galleryOpentime = galleryOpentime;
	}
	public Time getGalleryClosetime() {
		return galleryClosetime;
	}
	public void setGalleryClosetime(Time galleryClosetime) {
		this.galleryClosetime = galleryClosetime;
	}
	public int getReservationID() {
		return reservationID;
	}
	public void setReservationID(int reservationID) {
		this.reservationID = reservationID;
	}
	public int getGalleryID() {
		return galleryID;
	}
	public void setGalleryID(int galleryID) {
		this.galleryID = galleryID;
	}
	public int getProgramID() {
		return programID;
	}
	public void setProgramID(int programID) {
		this.programID = programID;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public Integer getReservationCount() {
		return reservationCount;
	}
	public void setReservationCount(Integer reservationCount) {
		this.reservationCount = reservationCount;
	}
	public String getProgramTitle() {
		return programTitle;
	}
	public void setProgramTitle(String programTitle) {
		this.programTitle = programTitle;
	}
	public Boolean getPayment() {
		return payment;
	}
	public void setPayment(Boolean payment) {
		this.payment = payment;
	}
	public String getReservationTime() {
		return reservationTime;
	}
	public void setReservationTime(String reservationTime) {
		this.reservationTime = reservationTime;
	}
    
}
