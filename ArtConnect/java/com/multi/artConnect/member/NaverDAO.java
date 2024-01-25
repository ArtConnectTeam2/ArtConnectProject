package com.multi.artConnect.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NaverDAO {

	//mybatis di해주어야 함.
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(NaverVO naverVO) {
		//mybatis호출해서 db처리 다 전담시킴.!
		my.insert("naver.insert", naverVO);
	}
}
