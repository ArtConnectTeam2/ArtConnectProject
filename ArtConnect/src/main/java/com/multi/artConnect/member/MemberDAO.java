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

	public MemberVO login(MemberVO memberVO) {
		return my.selectOne("member.login", memberVO);
	}
}
