package com.multi.artConnect.member;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	//로그인 페이지로 넘어가기
	@GetMapping("/login")
    public String showLoginForm() {
        return "member/Login";
    }
	
	//회원가입페이지로 넘어가기
	@GetMapping("/register")
    public String showRegisterForm() {
        return "member/Register";
    }
	
	@RequestMapping("/insert.member")
	public String insert(MemberVO memberVO, Model model, HttpServletRequest request) {
	    try {
		System.out.println("Received Data: " + memberVO.toString());
	        memberService.insert(memberVO);
	        model.addAttribute("message", "Registration successful");
	        return "/member/RegisterSuccess";
	    } catch (DataIntegrityViolationException e) {
	        model.addAttribute("errorMessage", "중복된 아이디입니다. 다른 아이디를 사용해주세요");
	        return "/member/Register";
	    } catch (Exception e) {
	        model.addAttribute("errorMessage", "에러가 발생했습니다");
	        return "/member/Register";
	    }
	}
	
	/*  기존 회원가입 처리시 콘솔창 (개발용)
	 * System.out.println("입력된 데이터: " + memberVO.toString());
	 * memberService.insert(memberVO); model.addAttribute("message",
	 * "Registration successful");
	 */
	
	@RequestMapping("/login.member")

	public String login(MemberVO memberVO, Model model, HttpSession session, RedirectAttributes redirectAttributes) {

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
	        redirectAttributes.addFlashAttribute("errorMessage", "아이디 혹은 비밀번호를 다시 확인해주세요.");
			// 로그 출력 추가 (나중에 완성되면 지워야함. 테스트 시 로그 확인용)
			System.out.println("Login Failed. User ID: " + memberVO.getmemberID()); 
			System.out.println("Login Failed. User PW: " + memberVO.getmemberPW());
			
			// 여기는 나중에 지워야 합니다
			
			return "redirect:/member/login";
		}
	}
}
