package com.multi.artConnect.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NaverController {
	
	@Autowired //di-ram에 어디에 있는지 자동으로 찾아서 그 주소를 주입해주는 것 
	NaverService naverService; 
	
	
	@RequestMapping("/member/naverLogin")
	public void insert(NaverVO naverVO, HttpSession session) {
		System.out.println(naverVO);
		naverService.insert(naverVO);
	}
	
	
}
