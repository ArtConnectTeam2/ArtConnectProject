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
    
    public int idCheck(String memberID) {
        // idCheck 메서드를 통해 중복 여부 확인
        int result = memberDAO.idCheck(memberID);
        return result;
    }

    public MemberVO login(MemberVO memberVO) {
        return memberDAO.login(memberVO);
    }
}
