package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class QnaController {

	@Autowired
	QnaService service;
	
	//QnA 목록
	@RequestMapping("notice/qnaList")
	public void qnaList(Model model) {
		List<QnaVO> list= service.list();
		//views/noticeList.jsp로 무조건 넘어간다.
		//list도 같이 전달되어야한다. 
		//model이다.
		model.addAttribute("list",list );
	}
	
	//QnA 입력
	@RequestMapping("notice/qnaInsert")
	public String insert(QnaVO qnaVO) {
		service.insert(qnaVO);
		return "redirect:qnaList";
	}
	
	//QnA  조회
	@RequestMapping("notice/qnaGet")
	public String getpage(QnaVO qnaVO, Model model) {	
		QnaVO vo = service.getpage(qnaVO.getNo());
		model.addAttribute("vo", vo);		
		return "notice/qnaGet";}
	
	//QnA  수정1
	@RequestMapping("notice/qnaModify")
	//수정할 내용을 DB검색해서 가지고 온 후 JSP에 넣어준다.
	public String modify(QnaVO qnaVO, Model model) {	
		QnaVO vo = service.getpage(qnaVO.getNo());
		model.addAttribute("vo", vo);		
		return "notice/qnaModify";
	}
	
	//QnA  수정2
	@RequestMapping("notice/qnaModify2")
	//수정할 내용을 DB검색해서 가지고 온 후 JSP에 넣어준다.
	public String modify2(QnaVO qnaVO, Model model) {	
		service.modify2(qnaVO);			
		return "redirect:qnaList";
	}
	
	//QnA 삭제
	@RequestMapping("notice/qnaDel")
	public String del(int no, Model model) {	
		service.del(no);
		return "redirect:qnaList";
	}
	
}
