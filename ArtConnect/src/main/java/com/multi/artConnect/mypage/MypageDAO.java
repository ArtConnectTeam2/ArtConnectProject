package com.multi.artConnect.mypage;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MypageDAO {

	@Autowired
	SqlSessionTemplate my; 
	
	public MemberVO one(String memberID) {
		return my.selectOne("member.updateOne", memberID);
	}
	
	public int update(MemberVO vo) {
		int result = my.update("member.update", vo);
		return result;
	}
	
	public MemberVO one2(String memberID) {
		return my.selectOne("member.deleteOne", memberID);
	}
	
	public int delete(String memberID) {
		int result = my.delete("member.delete", memberID);
		return result;
	}
	
}