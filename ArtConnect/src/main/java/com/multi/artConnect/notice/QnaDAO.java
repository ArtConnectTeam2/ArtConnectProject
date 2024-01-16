package com.multi.artConnect.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//QnA  목록
	public List<QnaVO> list() {
		return my.selectList("qna.list");
	}
	
	//QnA 입력
	public void insert(QnaVO qnaVO) {
			my.insert("qna.insert", qnaVO);
	}
	
	//QnA 조회
	public QnaVO getpage(int no) {
		return my.selectOne("qna.getpage", no);
	}
	
	//QnA 수정
	public void modify2(QnaVO qnaVO) {
			my.update("qna.update", qnaVO);
	}
	
	//QnA 삭제
	public void del(int no) {
			my.delete("qna.delete", no);
	}
		
}
	
