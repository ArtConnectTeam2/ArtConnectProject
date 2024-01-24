package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class QnaController {

	@Autowired
	QnaService service;
	
	@Autowired
	CommentService service2;
	
	//QnA 목록
	@RequestMapping("notice/qnaList1")
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
		QnaVO vo = service.getpage(qnaVO.getQnaNO());	
		service.hit(qnaVO.getQnaNO());	
		List<CommentVO> list = service2.list(qnaVO.getQnaNO());
		System.out.println(list.size());
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return "notice/qnaGet";
	}
	
	//QnA  수정1
	@RequestMapping("notice/qnaModify")
	//수정할 내용을 DB검색해서 가지고 온 후 JSP에 넣어준다.
	public String modify(QnaVO qnaVO, Model model) {	
		QnaVO vo = service.getpage(qnaVO.getQnaNO());
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
	public String del(int qnaNO, Model model) {	
		service.del(qnaNO);
		return "redirect:qnaList";
	}
	
	//QnA 조회수증가
	@RequestMapping("notice/qnaHit")
	public String hit(int qnaNO, Model model) {	
		service.hit(qnaNO);
		return "redirect:qnaList";
	}
	
	//QnA 목록 + 페이징
	@RequestMapping("notice/qnaList")
	public String Listpage(Model model, 
						@RequestParam(name = "page", defaultValue = "1") int page,
						@RequestParam(name = "size", defaultValue = "10") int size) {
		int totalCount = service.getTotalCount();
		
		//System.out.println("totalCount : " + totalCount);
        //페이징 처리를 위한 정보 설정
		PagingVO pagingVO = new PagingVO(page, size, totalCount);
		
		//System.out.println("pagingVO : " + pagingVO);
		int start = pagingVO.getStart();  //0
		int end = pagingVO.getSize();     //10

        List<QnaVO> list = service.selectWithPaging(start, end);
        model.addAttribute("list", list);
        model.addAttribute("pagingVO", pagingVO);
		
        return "notice/qnaList"; 
	}
	
}
