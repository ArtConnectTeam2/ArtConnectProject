package com.multi.artConnect.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate my;

	public void insert(MemberVO memberVO) {
		my.insert("member.insert", memberVO);
	}
	
	public int idCheck(String memberID) {
		return my.selectOne("member.idCheck", memberID);
	}

	public MemberVO login(MemberVO memberVO) {
		return my.selectOne("member.login", memberVO);
	}
	
	//아이디를 통하여 회원정보 가져오기
	public MemberVO getData(String memberID) {
		return my.selectOne("member.getData", memberID);
	}
}
