package com.multi.artConnect.gallery;

import java.util.Date;

public class ProgramVO_gallery {
    private int programID;
    private int galleryID;
    private String programTitle;
    private String programImg;
    private String artist;
    private String programTheme;
    private Date programStart;
    private Date programEnd;
    private int priceAdult;
    private int priceTeenager;
    private int priceChild;
    private String programTel;
    private String programRoom;
    
	public int getProgramID() {
		return programID;
	}
	public void setProgramID(int programID) {
		this.programID = programID;
	}
	public int getGalleryID() {
		return galleryID;
	}
	public void setGalleryID(int galleryID) {
		this.galleryID = galleryID;
	}
	public String getProgramTitle() {
		return programTitle;
	}
	public void setProgramTitle(String programTitle) {
		this.programTitle = programTitle;
	}
	public String getProgramImg() {
		return programImg;
	}
	public void setProgramImg(String programImg) {
		this.programImg = programImg;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getProgramTheme() {
		return programTheme;
	}
	public void setProgramTheme(String programTheme) {
		this.programTheme = programTheme;
	}
	public Date getProgramStart() {
		return programStart;
	}
	public void setProgramStart(Date programStart) {
		this.programStart = programStart;
	}
	public Date getProgramEnd() {
		return programEnd;
	}
	public void setProgramEnd(Date programEnd) {
		this.programEnd = programEnd;
	}
	public int getPriceAdult() {
		return priceAdult;
	}
	public void setPriceAdult(int priceAdult) {
		this.priceAdult = priceAdult;
	}
	public int getPriceTeenager() {
		return priceTeenager;
	}
	public void setPriceTeenager(int priceTeenager) {
		this.priceTeenager = priceTeenager;
	}
	public int getPriceChild() {
		return priceChild;
	}
	public void setPriceChild(int priceChild) {
		this.priceChild = priceChild;
	}
	public String getProgramTel() {
		return programTel;
	}
	public void setProgramTel(String programTel) {
		this.programTel = programTel;
	}
	public String getProgramRoom() {
		return programRoom;
	}
	public void setProgramRoom(String programRoom) {
		this.programRoom = programRoom;
	}
}
