package com.multi.artConnect.gallery;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProgramDAO_gallery {
	
	@Autowired
	SqlSessionTemplate my;
	
	/*
	 * public List<ProgramVO_gallery>programlist(String galleryID){
	 * List<ProgramVO_gallery> programlist =
	 * my.selectList("com.multi.artConnect.gallery.ProgramDAO_gallery.programlist",
	 * galleryID); return programlist; }
	 */
	
	public void programinsert(ProgramVO_gallery programVO_gallery) {

	    my.insert("com.multi.artConnect.gallery.ProgramDAO_gallery.programinsert", programVO_gallery);
	}
}
