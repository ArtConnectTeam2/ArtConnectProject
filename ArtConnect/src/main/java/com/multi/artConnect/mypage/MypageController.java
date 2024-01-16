package com.multi.artConnect.mypage;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.multi.artConnect.reservation.ReservationVO;
import com.multi.artConnect.review.BoardVO;
import com.multi.artConnect.review.PageVO;
import java.util.List;
import java.util.Map;


@Controller
public class MypageController {

	@Autowired
	MypageDAO dao;

	@RequestMapping("mypage/updateOne") // update 회원정보
	public String updateOne(String memberID, Model model) {
		MemberVO one = dao.one(memberID);
		System.out.println(one);
		model.addAttribute("member", one);
		return "mypage/memberUpdate";
	}
	
	@PostMapping("mypage/updateOk")
	public void update(MemberVO vo, Model model) {
		System.out.println(vo);
		int result = dao.update(vo);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("mypage/deleteOne") 
	public String deleteOne(String memberID, Model model) {
		MemberVO one = dao.one(memberID);
		System.out.println(one);
		model.addAttribute("member", one);
		return "mypage/memberDelete";
	}
	
	
	@PostMapping("mypage/deleteOk")
	public String delete(@RequestParam String memberID, @RequestParam String memberPW, RedirectAttributes redirectAttributes) {
	    MemberVO member = dao.one(memberID);

	    if (member != null && member.getmemberPW().equals(memberPW)) {  
	        int result = dao.delete(memberID);  

	        if (result == 1) {
	            redirectAttributes.addFlashAttribute("result", "deleteSuccess");
	            return "mypage/deleteOk";
	        }
	    }

	    // 비밀번호 불일치 - 탈퇴 실패
	    redirectAttributes.addFlashAttribute("result", "deleteNo");
	    return "mypage/memberDelete";
	}
	
	 @GetMapping("mypage/deleteOk") 
	    public String showDeletePage() {
	        return "mypage/memberDelete";
	    }
	 
	 @GetMapping("mypage/deleteNo")
	 public String showDeleteFailPage() {
	     return "mypage/deleteNo";
	 }

	 
	 @GetMapping("mypage/myReview")
	 public String myReviewList(Model model, HttpSession session,
	                            @RequestParam(name = "page", defaultValue = "1") int page,
	                            @RequestParam(name = "size", defaultValue = "5") int size) {
	     String memberID = (String) session.getAttribute("memberID");
	     int totalCount = dao.getTotalCount(memberID); 

	     PageVO pageVO = new PageVO(page, size, totalCount);
	     int start = pageVO.getStart(); // 페이징 시작 
	     int end = pageVO.getEnd();     // 페이징 종료 

	     List<BoardVO> review = dao.myReviewList(memberID, start, size); 
	     model.addAttribute("list", review);    
	     model.addAttribute("pageVO", pageVO);   

	     return "mypage/myReview"; 
	 }
	 
	  @GetMapping("mypage/myReservation")
	    public String myReservationList(Model model, HttpSession session) {
	        String memberID = (String) session.getAttribute("memberID");
	        List<ReservationVO> reservation = dao.myReservationList(memberID);
	        model.addAttribute("list", reservation);
	        return "mypage/myReservation";
	    }
	 
	// MemberID에 따른 Like 목록 가져오기
		@RequestMapping("mypage/myLike")
		public String myLike(HttpSession session, Model model) {
			  // 현재 로그인한 회원의 아이디 가져오기 (세션에서)
		    String memberID = (String) session.getAttribute("memberID");

		    // 좋아요 정보를 가져오는 DAO 메소드 호출
		    List<Map<String, Object>> likesList = dao.myLike(memberID);

		    // Model에 좋아요 정보를 추가
		    model.addAttribute("likesList", likesList);

		    // 마이페이지로 이동
		    return "mypage/myLike";
		}
}