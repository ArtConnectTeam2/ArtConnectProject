package com.multi.artConnect.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	@Autowired
	SqlSessionTemplate my;
	
	//댓글 목록 불러오기
	public List<ReplyVO> selectReplies(int reviewNO) {
		return my.selectList("reply.selectReplies", reviewNO);
	}
	
	//댓글 추가
	public void insertReply(ReplyVO reply) {
		my.insert("reply.insertReply", reply);
	}
	
	
}
