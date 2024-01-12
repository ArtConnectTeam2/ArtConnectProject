package com.multi.artConnect.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service //싱글톤 
public class NaverService {
	
	@Autowired
	NaverDAO naverDAO;
	
	public void insert(NaverVO naverVO) {
		//db넣기전 전처리 
		naverDAO.insert(naverVO);
	}
}
