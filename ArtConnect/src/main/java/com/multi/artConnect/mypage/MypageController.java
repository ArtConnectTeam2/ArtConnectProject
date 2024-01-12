package com.multi.artConnect.mypage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



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
	    return "mypage/deleteOk";
	}
	
	 @GetMapping("mypage/deleteOk") 
	    public String showDeletePage() {
	        return "mypage/memberDelete";
	    }
	 
	 @GetMapping("mypage/deleteNo")
	 public String showDeleteFailPage() {
	     return "mypage/deleteNo";
	 }

}