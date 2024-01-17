package com.multi.artConnect.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//공지사항 목록
	public List<NoticeVO> list() {
		return my.selectList("notice.list");
	}
	
	//공지사항 작성
	public void insert(NoticeVO noticeVO) {
			my.insert("notice.insert", noticeVO);
	}
	
	//공지사항 조회
	public NoticeVO getpage(int no) {
		return my.selectOne("notice.getpage", no);
	}
	
	//공지사항 수정
	public void modify2(NoticeVO noticeVO) {
			my.update("notice.update", noticeVO);
	}
	
	//공지사항 삭제
	public void del(int no) {
			my.delete("notice.delete", no);
	}
	
	//공지사항 조회수증가
	public void hit(int no) {
			my.update("notice.updateHit", no);
	}
	
	
}
	
