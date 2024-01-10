package com.multi.artConnect.member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberDAO memberDAO;

    public void insert(MemberVO memberVO) {
        memberDAO.insert(memberVO);
        
    }
    


    public MemberVO login(MemberVO memberVO) {
        return memberDAO.login(memberVO);
    }
}
