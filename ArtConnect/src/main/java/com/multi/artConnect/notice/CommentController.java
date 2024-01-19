package com.multi.artConnect.notice;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.artConnect.review.ReplyVO;


@Controller
public class CommentController {

	@Autowired
	CommentService service;
	
    //댓글 작성
    @RequestMapping("notice/commentInsert")
	public String insert(CommentVO commentVO) {
		service.insert(commentVO);
		return "redirect:qnaGet?no=" + commentVO.getBno();
	}
    	
}
