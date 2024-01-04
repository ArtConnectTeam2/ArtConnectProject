package com.multi.artConnect.review;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public List<BoardVO> select() {
		return my.selectList("board.select");
	}
	
	public void boardPostOk(BoardVO boardvo) {
		my.insert("board.boardPostOk", boardvo);
	}
	
	public BoardVO one(int reviewNO) {
		return my.selectOne("board.one", reviewNO);
	}
	
	public int del(int reviewNO) {
		return my.delete("board.del", reviewNO);
	}
	
	public void increaseHit(int reviewNO) {
		// 글 조회시 죄회수 증가시키는 쿼리 실행
	    my.update("board.increaseHit", reviewNO);
	  
	}
	public void boardModifyOk(BoardVO boardvo) {
        my.update("board.boardModifyOk", boardvo);
    }
	
	public List<BoardVO> selectWithPaging(int start, int end) {
	    Map<String, Object> map = new HashMap<>();
	    map.put("start", start);
	    map.put("end", end);
	    return my.selectList("board.selectWithPaging", map);
	}

}
