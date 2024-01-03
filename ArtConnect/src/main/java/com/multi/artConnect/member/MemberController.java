package com.multi.artConnect.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/insert.login")
    public String insert(MemberVO memberVO, Model model) {
        System.out.println("Received Data: " + memberVO.toString());
        memberService.insert(memberVO);
        model.addAttribute("message", "Registration successful");
        return "RegisterSuccess";
    }
    
    
}

