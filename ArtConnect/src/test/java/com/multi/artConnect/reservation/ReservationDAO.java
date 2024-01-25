package com.multi.artConnect.reservation;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class ReservationDAO {
	@Autowired
	SqlSessionTemplate my;
	
	@Transactional
	public int insertReservation(ReservationVO reservationVO) {
        	int insertReservation = my.insert("com.multi.artConnect.reservation.ReservationDAO.insertReservation", reservationVO);
        	return insertReservation;
	}
	
	public int checkTotalCount(ReservationVO reservationVO) {
		return my.selectOne("com.multi.artConnect.reservation.ReservationDAO.checkTotalCount", reservationVO);
	}
	
	public ReservationVO getReservation(@Param("memberID") String memberID, @Param("reservationID") int reservationID) {
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("memberID", memberID);
		parameters.put("reservationID", reservationID);
		return my.selectOne("com.multi.artConnect.reservation.ReservationDAO.getReservation", parameters);
	}
}
