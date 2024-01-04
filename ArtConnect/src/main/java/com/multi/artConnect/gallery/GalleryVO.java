package com.multi.artConnect.gallery;

import java.sql.Time;
import java.util.Date;

public class GalleryVO {

    private int gallery_Id;
    private String name;
    private String location;
    private String img;
    private Time time_open;
    private Time time_close;
    private String closure;
    private String tel;
    
	public int getGallery_Id() {
		return gallery_Id;
	}
	public void setGallery_Id(int gallery_Id) {
		this.gallery_Id = gallery_Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Time getTime_open() {
		return time_open;
	}
	public void setTime_open(Time time_open) {
		this.time_open = time_open;
	}
	public Time getTime_close() {
		return time_close;
	}
	public void setTime_close(Time time_close) {
		this.time_close = time_close;
	}
	public String getClosure() {
		return closure;
	}
	public void setClosure(String closure) {
		this.closure = closure;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
		
	}
	@Override
	public String toString() {
		return "GalleryVO [gallery_Id=" + gallery_Id + ", name=" + name + ", location=" + location + ", img=" + img
				+ ", time_open=" + time_open + ", time_close=" + time_close + ", closure=" + closure + ", tel=" + tel
				+ "]";
	}
} 
