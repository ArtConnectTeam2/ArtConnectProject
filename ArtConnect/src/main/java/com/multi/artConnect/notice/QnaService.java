package com.multi.artConnect.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class QnaService {

	@Autowired
	QnaDAO dao;
	
	//QnA  목록
	public List<QnaVO> list() {
		return dao.list();
	}
	
	//QnA 입력
	public void insert(QnaVO qnaVO) {
		dao.insert(qnaVO);
	}
	
	//QnA 조회
	public QnaVO getpage(int qnaNO) {
		return dao.getpage(qnaNO);
	}
	
	//QnA 수정
	public void modify2(QnaVO qnaVO) {
		dao.modify2(qnaVO);
	}
	
	//QnA 삭제
	public void del(int qnaNO) {
		dao.del(qnaNO);
	}
	
	//QnA 조회수증가
	public void hit(int qnaNO) {
		dao.hit(qnaNO);
	}
	
	//QnA 게시물갯수(페이징)
	public int getTotalCount() {
		return dao.getTotalCount();}

	public List<QnaVO> selectWithPaging(int start, int size) {
		 Map<String, Object> params = new HashMap<>();
		    params.put("start", start);
		    params.put("size", size);
		    //System.out.println("Map key start : " + params.get("start"));
		    //System.out.println("Map key size : " + params.get("size"));
		return dao.selectWithPaging(params); 
	}
	
}
