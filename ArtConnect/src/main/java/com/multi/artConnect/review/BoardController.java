package com.multi.artConnect.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping("review/boardList")
	public String boardList(Model model) {
		List<BoardVO> list = dao.select();
		model.addAttribute("list", list);
		return "review/boardList";
	}
	
	@RequestMapping("review/boardPost")
	public String boardPost() {
		return "review/boardPost";
	}
	
	@RequestMapping("review/boardPostOk")
	public String boardPostOk(BoardVO vo) {
		System.out.println(vo.getReviewTitle());
		System.out.println(vo.getReviewContent());
		dao.boardPostOk(vo);
		return "redirect:review/boardList";
	}
	
	@RequestMapping("review/boardOne")
	public void boardOne(int reviewNO, Model model) {
		//먼저 조회수 증가시킴
		dao.increaseHit(reviewNO);
		
		//그 후에 글 가져옴
		BoardVO one = dao.one(reviewNO);
		//모델에 추
		model.addAttribute("board", one);
	}
	
	
	@RequestMapping("review/boardDel")
	public String boardDel(int reviewNO) {
		dao.del(reviewNO);
		return "redirect:/review/boardList";
	}
	
	@RequestMapping("review/boardModify")  // 수정 폼으로 이동
    public String boardModify(int reviewNO, Model model) {
        BoardVO one = dao.one(reviewNO);
        model.addAttribute("board", one);
        return "review/boardModify";
    }

    @RequestMapping("review/boardModifyOk")  // 수정 처리
    public String boardModifyOk(BoardVO vo) {
        dao.boardModifyOk(vo);
        return "redirect:review/boardOne?reviewNO=" + vo.getReviewNO();
    }
	
	
}