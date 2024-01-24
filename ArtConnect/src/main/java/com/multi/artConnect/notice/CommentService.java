package com.multi.artConnect.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CommentService {

	@Autowired
	CommentDAO dao;

	// 댓글 조회
	public List<CommentVO> list(int commentBNO) {
		return dao.list(commentBNO);
	}
	
	// 댓글 작성
	public void insert(CommentVO commentVO) {
		dao.insert(commentVO);
	}
	
	// 댓글 수정
	public void modify(CommentVO commentVO) {
		dao.modify(commentVO);
	}
	
	// 댓글 삭제
	public void delete(CommentVO commentVO) {
		dao.delete(commentVO);
	}
	
}
