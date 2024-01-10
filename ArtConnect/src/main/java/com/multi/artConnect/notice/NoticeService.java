package com.multi.artConnect.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;




@Service
public class NoticeService {

	@Autowired
	NoticeDAO dao;
	
	
	public void insert(NoticeVO noticeVO) {
		dao.insert(noticeVO);
	}
}
