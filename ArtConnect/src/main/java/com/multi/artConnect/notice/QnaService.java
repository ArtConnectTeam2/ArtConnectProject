package com.multi.artConnect.notice;

import java.util.List;

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
	public QnaVO getpage(int no) {
		return dao.getpage(no);
	}
	
	//QnA 수정
	public void modify2(QnaVO qnaVO) {
		dao.modify2(qnaVO);
	}
	
	//QnA 삭제
	public void del(int no) {
		dao.del(no);
	}
	
	//QnA 조회수증가
	public void hit(int no) {
		dao.hit(no);
	}
	
}
