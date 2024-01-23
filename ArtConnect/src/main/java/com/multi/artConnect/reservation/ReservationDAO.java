package com.multi.artConnect.reservation;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public int insertReservation(ReservationVO reservationVO) {
        	int insertReservation = my.insert("com.multi.artConnect.reservation.ReservationDAO.insertReservation", reservationVO);
        	return insertReservation;
	}
	
	public int checkTotalCount(ReservationVO reservationVO) {
		return my.selectOne("com.multi.artConnect.reservation.ReservationDAO.checkTotalCount", reservationVO);
	}
}
