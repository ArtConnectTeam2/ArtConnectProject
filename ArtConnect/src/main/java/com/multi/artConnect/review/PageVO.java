package com.multi.artConnect.review;


public class PageVO {
 private int page;
 private int size;
 private int totalCount;
 private int totalPages;
 private int start;
 private int end;

 public PageVO(int page, int size, int totalCount) {
     this.page = page;
     this.size = size;
     this.totalCount = totalCount;
     this.totalPages = calculateTotalPages();
     this.start = calculateStart();
     this.end = calculateEnd();
 }

 private int calculateTotalPages() {
     return (int) Math.ceil((double) totalCount / size);
 }

 private int calculateStart() {
     return (page - 1) * size;
 }

 private int calculateEnd() {
     return Math.min(start + size, totalCount);
 }

public int getPage() {
	return page;
}

public void setPage(int page) {
	this.page = page;
}

public int getSize() {
	return size;
}

public void setSize(int size) {
	this.size = size;
}

public int getTotalCount() {
	return totalCount;
}

public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}

public int getTotalPages() {
	return totalPages;
}

public void setTotalPages(int totalPages) {
	this.totalPages = totalPages;
}

public int getStart() {
	return start;
}

public void setStart(int start) {
	this.start = start;
}

public int getEnd() {
	return end;
}

public void setEnd(int end) {
	this.end = end;
}

 
}
