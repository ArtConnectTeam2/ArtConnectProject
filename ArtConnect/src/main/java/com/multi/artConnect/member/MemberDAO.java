package com.multi.artConnect.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//DB로 접근하여 CRUD처리만 담당
@Repository
public class MemberDAO {
	
	//램에 있는 mybatis를 찾아서 주소를 변수에 넣어줌
	@Autowired
	SqlSessionTemplate my;
	
	//회원가입 처리 시 
	public void insert(MemberVO memberVO) {
		my.insert("member.insert", memberVO);
		
	}
	
	public int login(MemberVO memberVO) throws Exception {
		int reslut = my.selectOne("member.login", memberVO);
		return reslut; 
	}
}
