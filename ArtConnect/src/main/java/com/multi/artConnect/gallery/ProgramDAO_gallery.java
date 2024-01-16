/*
 * package com.multi.artConnect.gallery;
 * 
 * import java.util.List;
 * 
 * import org.mybatis.spring.SqlSessionTemplate; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Repository;
 * 
 * @Repository public class ProgramDAO_gallery {
 * 
 * @Autowired SqlSessionTemplate my;
 * 
 * public List<ProgramVO_gallery> listProgram(int galleryID) {
 * List<ProgramVO_gallery> listProgram =
 * my.selectList("com.multi.artConnect.reservation.ProgramDAO.listProgram",
 * galleryID); return listProgram; }
 * 
 * public ProgramVO_gallery getProgram(int programID) { return
 * my.selectOne("com.multi.artConnect.reservation.ProgramDAO.getProgram",
 * programID); } }
 */