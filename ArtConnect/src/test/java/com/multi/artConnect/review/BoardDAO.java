package com.multi.artConnect.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.reflection.SystemMetaObject;
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
		System.out.println("memberID :"  + boardvo.getMemberID());
		
		// 주차공간 유무를 boolean 형태로 DB에 저장
	    boolean parkingAvailable = boardvo.isParkingAvailable();
	    int parkingAvailableValue = parkingAvailable ? 1 : 0; // true이면 1, false이면 0으로 매핑
	    
	    // Map을 사용하여 주차공간 유무 값을 추가
	    Map<String, Object> params = new HashMap<>();
	    params.put("memberID", boardvo.getMemberID());
	    params.put("reviewTitle", boardvo.getReviewTitle());
	    params.put("reviewContent", boardvo.getReviewContent());
	    params.put("reviewFile", boardvo.getReviewFile());
	    params.put("filePath", boardvo.getFilePath());
	    params.put("parkingAvailable", parkingAvailableValue);
		
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
	
	public List<BoardVO> selectWithPaging(int start, int size) {
	    Map<String, Object> params = new HashMap<>();
	    params.put("start", start);
	    params.put("size", size);
	    return my.selectList("board.selectWithPaging", params);
	}

    public int getTotalCount() {
        return my.selectOne("board.getTotalCount");
    }
    

    public List<ReplyVO> getRepliesByReviewNo(int reviewNO) {
        return my.selectList("board.getRepliesByReviewNo", reviewNO);
    }
    
    public void getStarRating(int reviewNO, int starRating) {
        Map<String, Object> params = new HashMap<>();
        params.put("reviewNO", reviewNO);
        params.put("starRating", starRating);
        my.insert("board.insertStarRating", params);
    }


}

