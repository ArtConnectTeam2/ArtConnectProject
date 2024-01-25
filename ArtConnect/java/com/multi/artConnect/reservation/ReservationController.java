package com.multi.artConnect.reservation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("reservation")
public class ReservationController {

	@Autowired
	ReservationDAO reservationDAO;
	
	@Autowired
	ProgramDAO programDAO;
	
	@Autowired
	GalleryDAO_reserve galleryDAO_reserve;
	
	@RequestMapping("reservation/{galleryID}/{programID}")
	public String reservationPage(
			@PathVariable int galleryID,
			@PathVariable int programID,
			Model model) {
		GalleryVO_reserve gallery = galleryDAO_reserve.getGallery(galleryID);
		ProgramVO program = programDAO.getProgram(programID);
		model.addAttribute("gallery", gallery);
		model.addAttribute("program", program);
		return "reservation/reservation";
	}
	
	@RequestMapping(value = "reservation/{galleryID}/{programID}/insertReservation", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> insertReservation(
			@PathVariable int galleryID,
			@PathVariable int programID,
			@RequestBody ReservationVO reservationVO) {
		// 예약 삽입 수행
		int insertReservation = reservationDAO.insertReservation(reservationVO);
		
		// 삽입 이후에 ReservationVO 객체에 접근하여 생성된 reservationID 가져오기
		int reservationID = reservationVO.getReservationID();
		
		if (insertReservation > 0) {
	        // 예약이 성공하면 JSON 응답에 reservationID를 포함하여 반환
	        Map<String, Object> response = new HashMap<>();
	        response.put("reservationID", reservationID);
	        return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	    } else {
	        // 예약이 실패하면 JSON 응답에 실패 메시지를 포함하여 반환
	        Map<String, Object> response = new HashMap<>();
	        response.put("error", "예약 실패");
	        return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	}
	
	@RequestMapping(value = "reservation/{galleryID}/{programID}/updateTotalReserved", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Integer> updateTotalReserved(
			@PathVariable int galleryID,
			@PathVariable int programID,
			ReservationVO reservationVO) {
		int remainTotalCount = reservationDAO.checkTotalCount(reservationVO);
		
		Map<String, Integer> result = new HashMap<>();
		result.put("totalReserved", remainTotalCount);
		
		return result;
	}
}