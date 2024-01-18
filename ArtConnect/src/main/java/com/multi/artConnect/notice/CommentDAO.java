package com.multi.artConnect.notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.artConnect.review.ReplyVO;

@Repository
public class CommentDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//댓글 조회
	public List<CommentVO2> list(int bno) {
		return my.selectList("comment.commentList", bno);
	}
	
	//댓글 작성
	public void insert(CommentVO2 commentVO) {
		my.insert("comment.commentInsert", commentVO);
	}
	
	//댓글 수정
	public void modify(CommentVO2 commentVO) {
		my.update("comment.commentModify", commentVO);
	}
	
	// 댓글 삭제
	public void delete(CommentVO2 commentVO) {
		my.delete("comment.commentDelete", commentVO);
	}
	
}
