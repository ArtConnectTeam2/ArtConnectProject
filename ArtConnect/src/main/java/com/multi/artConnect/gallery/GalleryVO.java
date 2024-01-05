package com.multi.artConnect.gallery;

import java.sql.Time;
import java.util.Date;

public class GalleryVO {

    private int galleryID;
    private String galleryName;
    private String galleryImg;
    private String galleryLocation;
    private Time galleryOpentime;
    private Time galleryClosetime;
    private String closedDay;
    private String galleryTel;
    private double lat;
    private double lon;
    
	public int getGalleryID() {
		return galleryID;
	}
	public void setGalleryID(int galleryID) {
		this.galleryID = galleryID;
	}
	public String getGalleryName() {
		return galleryName;
	}
	public void setGalleryName(String galleryName) {
		this.galleryName = galleryName;
	}
	public String getGalleryImg() {
		return galleryImg;
	}
	public void setGalleryImg(String galleryImg) {
		this.galleryImg = galleryImg;
	}
	public String getGalleryLocation() {
		return galleryLocation;
	}
	public void setGalleryLocation(String galleryLocation) {
		this.galleryLocation = galleryLocation;
	}
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
	public String getClosedDay() {
		return closedDay;
	}
	public void setClosedDay(String closedDay) {
		this.closedDay = closedDay;
	}
	public String getGalleryTel() {
		return galleryTel;
	}
	public void setGalleryTel(String galleryTel) {
		this.galleryTel = galleryTel;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	
	@Override
	public String toString() {
		return "GalleryVO [galleryID=" + galleryID + ", galleryName=" + galleryName + ", galleryImg=" + galleryImg
				+ ", galleryLocation=" + galleryLocation + ", galleryOpentime=" + galleryOpentime
				+ ", galleryClosetime=" + galleryClosetime + ", closedDay=" + closedDay + ", galleryTel=" + galleryTel
				+ ", lat=" + lat + ", lon=" + lon + "]";
	}
}
