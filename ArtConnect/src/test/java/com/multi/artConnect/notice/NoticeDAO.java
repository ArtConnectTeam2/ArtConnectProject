package com.multi.artConnect.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@SuppressWarnings("unused")
@Repository
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//공지사항 목록
	public List<NoticeVO> list() {
		System.out.println("list  호출");
		return my.selectList("notice.list");
	}
	
	//공지사항 작성
	public void insert(NoticeVO noticeVO) {
			my.insert("notice.insert", noticeVO);
	}
	
	//공지사항 조회
	public NoticeVO getpage(int noticeNO) {
		return my.selectOne("notice.getpage", noticeNO);
	}
	
	//공지사항 수정
	public void modify2(NoticeVO noticeVO) {
			my.update("notice.update", noticeVO);
	}
	
	//공지사항 삭제
	public void del(int noticeNO) {
			my.delete("notice.delete", noticeNO);
	}
	
	//공지사항 조회수증가
	public void hit(int noticeNO) {
			my.update("notice.updateHit", noticeNO);
	}
	
	//공지사항 게시물갯수(페이징)
	public int getTotalCount() {
		return my.selectOne("notice.getTotalCount");
	}
	
	//공지사항 목록(페이징)
	public List<NoticeVO> selectWithPaging(Map<String, Object> params) {
		return my.selectList("notice.selectWithPaging", params);
		//my.selectList("board.selectWithPaging", params);
	}
	
	//공지사항 검색
	public List<NoticeVO> search(Map<String, Object> searchs) {
		return my.selectList("notice.search", searchs);
	}
	
}
	
