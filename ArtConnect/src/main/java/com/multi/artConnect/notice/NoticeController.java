package com.multi.artConnect.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	@RequestMapping("noticeInsert")
	public String insert(NoticeVO noticeVO) {
		service.insert(noticeVO);
		return "redirect:noticeInsert.jsp";
	}
}
