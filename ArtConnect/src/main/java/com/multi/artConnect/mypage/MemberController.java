package com.multi.artConnect.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.artConnect.mypage.MemberVO;


@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;

	@RequestMapping("mypage/updateOne")
	public String updateOne(String id_member, Model model) {
		MemberVO one = dao.one(id_member);
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
	
	@RequestMapping("mypage/deleteOk")
	public void delete(MemberVO vo, Model model) {
		System.out.println(vo);
		int result = dao.delete(vo);
		model.addAttribute("result", result);
	}
	
}