package com.multi.artConnect.member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberDAO memberDAO;

  //회원가입 메서드
    public void insert(MemberVO memberVO) {
        memberDAO.insert(memberVO);
        
    }
    
    // 회원가입시 아이디 중복 체크
    public int idCheck(String memberID) {
        // idCheck 메서드를 통해 중복 여부 확인
        int result = memberDAO.idCheck(memberID);
        return result;
    }
    
	// 암호화로 로그인 진행할시 기존 로그인 메서드로는 오류가 발생하여 일단 보류
//    public MemberVO login(MemberVO memberVO) {
//        // 입력한 정보가 맞는지 여부
//        boolean isValid = false;
//
//        // 아이디를 이용하여 회원정보를 가져옴
//        MemberVO resultVO = memberDAO.getData(memberVO.getmemberPW());
//
//        if (resultVO != null) {
//            // 입력한 비밀번호와 암호화해서 저장된 비밀번호 일치 여부
//            isValid = BCrypt.checkpw(memberVO.getmemberPW(), resultVO.getmemberPW());
//        }
//
//        // 일치한다면 로그인 메서드 실행
//        if (isValid) {
//            return memberDAO.login(memberVO);
//        }
//
//        return null;
//    }
    
    public MemberVO login(MemberVO memberVO) {
        return memberDAO.login(memberVO);
    }
}
