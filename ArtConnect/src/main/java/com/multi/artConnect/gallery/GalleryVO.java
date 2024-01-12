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
    private String homepageAddress;
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
	public String getHomepageAddress() {
		return homepageAddress;
	}
	public void setHomepageAddress(String homepageAddress) {
		this.homepageAddress = homepageAddress;
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
	
    // 각 칼럼에 대한 값을 반환하는 메서드 추가
    public Object getValueByColumnName(String columnName) {
        switch (columnName) {
            case "galleryID":
                return galleryID;
            case "galleryName":
                return galleryName;
            case "galleryImg":
                return galleryImg;
            case "galleryLocation":
                return galleryLocation;
            case "galleryOpentime":
                return galleryOpentime;
            case "galleryClosetime":
                return galleryClosetime;
            case "closedDay":
                return closedDay;
            case "galleryTel":
                return galleryTel;
            case "homepageAddress":
                return homepageAddress;
            case "lat":
                return lat;
            case "lon":
                return lon;
            default:
                return null;
        }
    }
}
