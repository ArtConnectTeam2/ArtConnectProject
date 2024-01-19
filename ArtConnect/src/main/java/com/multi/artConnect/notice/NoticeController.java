package com.multi.artConnect.notice;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	//공지사항 목록
	@RequestMapping("notice/noticeList")
	public void noticeList(Model model) {
		List<NoticeVO> list= service.list();
		//views/noticeList.jsp로 무조건 넘어간다.
		//list도 같이 전달되어야한다. 
		//model이다.
		model.addAttribute("list",list );
	}
	
	//공지사항 입력
	@RequestMapping("notice/noticeInsert")
	public String insert(NoticeVO noticeVO) {
		service.insert(noticeVO);
		return "redirect:noticeList";
	}
	
	//공지사항 조회
	@RequestMapping("notice/noticeGet")
	public String getpage(NoticeVO noticeVO, Model model) {	
		NoticeVO vo = service.getpage(noticeVO.getNo());
		service.hit(noticeVO.getNo());
		model.addAttribute("vo", vo);		
		return "notice/noticeGet";}
	
	//공지사항 수정1
	@RequestMapping("notice/noticeModify")
	//수정할 내용을 DB검색해서 가지고 온 후 JSP에 넣어준다.
	public String modify(NoticeVO noticeVO, Model model) {	
		NoticeVO vo = service.getpage(noticeVO.getNo());
		model.addAttribute("vo", vo);		
		return "notice/noticeModify";
	}
	
	//공지사항 수정2
	@RequestMapping("notice/noticeModify2")
	//수정할 내용을 DB검색해서 가지고 온 후 JSP에 넣어준다.
	public String modify2(NoticeVO noticeVO, Model model) {	
		service.modify2(noticeVO);			
		return "redirect:noticeList";
	}
	
	//공지사항 삭제
	@RequestMapping("notice/noticeDel") //jsp href=noticeDel?no=10"
	//noticeVO no ??
	//setNo(10)
	public String del(int no, Model model) {	
		service.del(no);
		return "redirect:noticeList";
	//	return String "redirect:noticeList" views/notice/noticeList.jsp
	//retrun void -> spring view resolver -> views/notice/noticeDel.jsp
	}

	//공지사항 조회수증가
	@RequestMapping("notice/noticeHit")
	public String hit(int no, Model model) {	
		service.hit(no);
		return "redirect:noticeList";
	}
	
}
