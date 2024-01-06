package com.multi.artConnect.notice;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void insert(NoticeVO noticeVO) {
			my.insert("notice.insert", noticeVO);
	}
}
