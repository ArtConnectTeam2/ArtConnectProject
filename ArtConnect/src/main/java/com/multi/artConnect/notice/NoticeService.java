package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class NoticeService {

	@Autowired
	NoticeDAO dao;
	
	//공지사항 목록
	public List<NoticeVO> list() {
		return dao.list();
	}
	
	//공지사항 작성
	public void insert(NoticeVO noticeVO) {
		dao.insert(noticeVO);
	}	
	
	//공지사항 조회
	public NoticeVO getpage(int no) {
		return dao.getpage(no);
	}
	
	//공지사항 수정
	public void modify2(NoticeVO noticeVO) {
		dao.modify2(noticeVO);
	}
	
	//공지사항 삭제
	public void del(int no) {
		dao.del(no);
	}
	
}
