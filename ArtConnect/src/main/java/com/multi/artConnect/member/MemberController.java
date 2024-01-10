package com.multi.artConnect.member;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/member/insert.member")

		System.out.println("Received Data: " + memberVO.toString());
		memberService.insert(memberVO);
		model.addAttribute("message", "Registration successful");
		return "member/RegisterSuccess";

	}
	
	
	
	@RequestMapping("/member/login.member")
	public String login(MemberVO memberVO, Model model, HttpSession session) {
		MemberVO loggedInUser = memberService.login(memberVO);

		if (loggedInUser != null) {
			// 로그인 성공
			
			//세션에 아이디 저장
			session.setAttribute("memberID", loggedInUser.getmemberID());
			//세션에 이름 저장
			session.setAttribute("memberName", loggedInUser.getmemberName());
			
			// 로그 출력 추가
			System.out.println("Login Successful. User ID: " + loggedInUser.getmemberID());
			return "member/LoginSuccess"; // 로그인 성공 후 이동할 페이지
		} else {
			// 로그인 실패
			
			// 로그 출력 추가 (나중에 완성되면 지워야함. 테스트 시 로그 확인용)
			System.out.println("Login Failed. User ID: " + memberVO.getmemberID()); 
			System.out.println("Login Failed. User PW: " + memberVO.getmemberPW());
			// 여기는 나중에 지워야 합니다
			
			return "member/Loginfail"; // 로그인 실패 시 실패창으로 이동
		}
	}
}
