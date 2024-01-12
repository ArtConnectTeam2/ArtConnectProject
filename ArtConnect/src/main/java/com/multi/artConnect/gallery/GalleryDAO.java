package com.multi.artConnect.gallery;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAO {

	@Autowired
	SqlSessionTemplate my;

	public List<GalleryVO> list() throws Exception {
		List<GalleryVO> list = my.selectList("gallery.list");
		return list;
	}

	public List<GalleryVO> search(String name) {
		List<GalleryVO> list = my.selectList("gallery.search", name);
		return list;
	}

	public GalleryVO detail(String galleryName) {
		return my.selectOne("gallery.detail", galleryName);
	}

	public GalleryVO location(String galleryName) {
		return my.selectOne("gallery.location", galleryName);
	}

	// 좋아요 추가
	public void like(Map<String, Object> map) {
		my.insert("gallery.like", map);
	}

}