package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	@RequestMapping("notice/noticeInsert")
	public String insert(NoticeVO noticeVO) {
		service.insert(noticeVO);
		return "redirect:noticeList";
	}
	
	@RequestMapping("notice/noticeList")
	public void noticeList(Model model) {
		List<NoticeVO> list= service.list();
		//views/noticeList.jsp로 무조건 넘어간다.
		//list도 같이 전달되어야한다. 
		//model이다.
		model.addAttribute("list",list );
	}
}
