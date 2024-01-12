package com.multi.artConnect.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	// 검색 목록
	public List<GalleryVO> searchGallery(String galleryName) {
		List<GalleryVO> searchGallery = my.selectList("com.multi.artConnect.reservation.GalleryDAO.searchGallery", galleryName);
		return searchGallery;
	}
	
	// 전체 목록
	public List<GalleryVO> listGallery() {
		List<GalleryVO> listGallery = my.selectList("com.multi.artConnect.reservation.GalleryDAO.listGallery");
		return listGallery;
	}
	
	public GalleryVO getGallery(int galleryID) {
		return my.selectOne("com.multi.artConnect.reservation.GalleryDAO.getGallery", galleryID);
	}
}