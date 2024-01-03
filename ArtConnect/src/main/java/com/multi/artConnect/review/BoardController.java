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
	
	@RequestMapping("boardList")
	public void boardList(Model model) {
		List<BoardVO> list = dao.select();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("boardPost")
	public String boardPost() {
		return "boardPost";
	}
	
	@RequestMapping("boardPostOk")
	public String boardPostOk(BoardVO vo) {
		System.out.println(vo.getReviewTitle());
		System.out.println(vo.getReviewContent());
		dao.boardPostOk(vo);
		return "redirect:boardList";
	}
	
	@RequestMapping("boardOne")
	public void boardOne(int reviewNO, Model model) {
		//먼저 조회수 증가시킴
		dao.increaseHit(reviewNO);
		
		//그 후에 글 가져옴
		BoardVO one = dao.one(reviewNO);
		//모델에 추
		model.addAttribute("board", one);
	}
	
	
	@RequestMapping("boardDel")
	public String boardDel(int reviewNO) {
		dao.del(reviewNO);
		return "redirect:/boardList";
	}
	
	@RequestMapping("boardModify")  // 수정 폼으로 이동
    public String boardModify(int reviewNO, Model model) {
        BoardVO one = dao.one(reviewNO);
        model.addAttribute("board", one);
        return "boardModify";
    }

    @RequestMapping("boardModifyOk")  // 수정 처리
    public String boardModifyOk(BoardVO vo) {
        dao.boardModifyOk(vo);
        return "redirect:boardOne?reviewNO=" + vo.getReviewNO();
    }
	
	
}