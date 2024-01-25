package com.multi.artConnect.notice;

import java.util.List;
import java.util.Map;

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
	public QnaVO getpage(int qnaNO) {
		return my.selectOne("qna.getpage", qnaNO);
	}
	
	//QnA 수정
	public void modify2(QnaVO qnaVO) {
			my.update("qna.update", qnaVO);
	}
	
	//QnA 삭제
	public void del(int qnaNO) {
			my.delete("qna.delete", qnaNO);
	}
	
	//QnA 조회수증가
	public void hit(int qnaNO) {
			my.update("qna.updateHit", qnaNO);
	}
	
	//QnA 게시물갯수(페이징)
	public int getTotalCount() {
		return my.selectOne("qna.getTotalCount");
	}
	
	//QnA 목록(페이징)
	public List<QnaVO> selectWithPaging(Map<String, Object> params) {
		 //System.out.println("dao list2 call");
		 return my.selectList("qna.selectWithPaging", params);
	}
	
}
	
