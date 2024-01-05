package com.multi.artConnect.mypage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.artConnect.mypage.MemberVO;



@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate my; 
	
	public MemberVO one(String id_member) {
		return my.selectOne("member.updateOne", id_member);
	}
	
	public int update(MemberVO vo) {
		int result = my.update("member.update", vo);
		return result;
	}
	
	public int delete(MemberVO vo) {
		int result = my.delete("member.delete", vo);
		return result;
	}
	
}
