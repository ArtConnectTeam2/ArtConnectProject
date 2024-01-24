package com.multi.artConnect.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public NoticeVO getpage(int noticeNO) {
		return dao.getpage(noticeNO);
	}
	
	//공지사항 수정
	public void modify2(NoticeVO noticeVO) {
		dao.modify2(noticeVO);
	}
	
	//공지사항 삭제
	public void del(int noticeNO) {
		dao.del(noticeNO);
	}
	
	//공지사항 조회수증가
	public void hit(int noticeNO) {
		dao.hit(noticeNO);
	}
	
	//공지사항 카운트
	public int getTotalCount() {
		return dao.getTotalCount();
	}
	
	//공지사항 페이징
	public List<NoticeVO> selectWithPaging(int start, int size) {
		 Map<String, Object> params = new HashMap<>();
		    params.put("start", start);
		    params.put("size", size);
		    //System.out.println("Map key start : " + params.get("start"));
		    //System.out.println("Map key size : " + params.get("size"));
		 return dao.selectWithPaging(params);		    		
	}
	
	//공지사항 검색
	public List<NoticeVO> listPageSearch(String type, String keyword) {
		Map<String, Object> searchs = new HashMap<>();
			searchs.put("type", type);
			searchs.put("keyword", keyword);
		return dao.search(searchs);	
	}
	
	
}
