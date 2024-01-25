package com.multi.artConnect.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAO_reserve {
	
	@Autowired
	SqlSessionTemplate my;
	
	// 검색 목록
	public List<GalleryVO_reserve> searchGallery(String galleryName) {
		List<GalleryVO_reserve> searchGallery = my.selectList("com.multi.artConnect.reservation.GalleryDAO_reserve.searchGallery", galleryName);
		return searchGallery;
	}
	
	// 전체 목록
	public List<GalleryVO_reserve> listGallery() {
		List<GalleryVO_reserve> listGallery = my.selectList("com.multi.artConnect.reservation.GalleryDAO_reserve.listGallery");
		return listGallery;
	}
	
	public GalleryVO_reserve getGallery(int galleryID) {
		return my.selectOne("com.multi.artConnect.reservation.GalleryDAO_reserve.getGallery", galleryID);
	}
}