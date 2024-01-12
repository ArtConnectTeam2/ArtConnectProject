package com.multi.artConnect.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public List<ReplyVO> select() {
		return my.selectList("reply.select");
	}
	
	
}
