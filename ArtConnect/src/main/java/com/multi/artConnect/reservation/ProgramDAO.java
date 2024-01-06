package com.multi.artConnect.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProgramDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public List<ProgramVO> listProgram(int galleryID) {
		List<ProgramVO> listProgram = my.selectList("com.multi.artConnect.reservation.ProgramDAO.listProgram", galleryID);
		return listProgram;
	}
	
	public ProgramVO getProgram(int programID) {
		return my.selectOne("com.multi.artConnect.reservation.ProgramDAO.getProgram", programID);
	}
}
