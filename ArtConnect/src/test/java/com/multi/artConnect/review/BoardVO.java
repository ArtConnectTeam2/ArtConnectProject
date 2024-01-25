package com.multi.artConnect.review;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int reviewNO;
	private String memberID;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewDate;
	private int reviewHit;
	private int starRating;
	private boolean parkingAvailable;
	
	private String reviewFile;
	private String filePath;
	
	
	
	public int getReviewNO() {
		return reviewNO;
	}


	public void setReviewNO(int reviewNO) {
		this.reviewNO = reviewNO;
	}


	public String getMemberID() {
		return memberID;
	}


	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}


	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public Date getReviewDate() {
		return reviewDate;
	}


	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}


	public int getReviewHit() {
		return reviewHit;
	}


	public void setReviewHit(int reviewHit) {
		this.reviewHit = reviewHit;
	}


	public String getReviewFile() {
		return reviewFile;
	}


	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}
	
	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	@Override
	public String toString() {
		return "BoardVO [reviewNO=" + reviewNO + ", memberID=" + memberID + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", reviewHit=" + reviewHit
				+ ", starRating=" + starRating + ", reviewFile=" + reviewFile + ", filePath=" + filePath + "]";
	}


	public int getStarRating() {
		return starRating;
	}


	public void setStarRating(int starRating) {
		this.starRating = starRating;
	}


	public boolean isParkingAvailable() {
		return parkingAvailable;
	}


	public void setParkingAvailable(boolean parkingAvailable) {
		this.parkingAvailable = parkingAvailable;
	}


	

	



	
	

}


