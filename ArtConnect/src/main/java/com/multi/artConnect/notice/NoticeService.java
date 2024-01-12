package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class NoticeService {

	@Autowired
	NoticeDAO dao;
	
	
	public void insert(NoticeVO noticeVO) {
		dao.insert(noticeVO);
	}
	
	public List<NoticeVO> list() {
		return dao.list();
	}
}
