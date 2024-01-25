package com.multi.artConnect.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/review")
public class ReplyController {

    @Autowired
    private ReplyDAO replyDAO;

    //댓글 추가 처리
    @RequestMapping(value = "insertReply", method = RequestMethod.POST)
    public String insertReply(ReplyVO reply, Model model, HttpSession session) {
    	
    	String memberID = (String)session.getAttribute("memberID");
		// 댓글에 사용자의 ID 설정
        reply.setMemberID(memberID);
    	//댓글 추가 
    	replyDAO.insertReply(reply);
    	
        // 댓글 추가 후 게시글 상세 페이지로 리다이렉트
        return "redirect:boardOne?reviewNO=" + reply.getReviewNO();
    }
    
    @RequestMapping("review/updateReply")
    public String updateReply(ReplyVO replyVO) {
        replyDAO.updateReply(replyVO);
        return "redirect:/review/boardOne?reviewNO=" + replyVO.getReviewNO();
    }

    @RequestMapping("deleteReply")
    public String deleteReply(int replyNO, int reviewNO) {
        replyDAO.deleteReply(replyNO);
        return "redirect:/review/boardOne?reviewNO=" + reviewNO;
    }
    
}
