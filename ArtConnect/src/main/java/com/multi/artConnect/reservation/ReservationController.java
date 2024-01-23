package com.multi.artConnect.reservation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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
	public String reservationPage(@PathVariable int galleryID,@PathVariable int programID, Model model) {
		GalleryVO_reserve gallery = galleryDAO_reserve.getGallery(galleryID);
		ProgramVO program = programDAO.getProgram(programID);
		model.addAttribute("gallery", gallery);
		model.addAttribute("program", program);
		return "reservation/reservation";
	}
	
	@RequestMapping(value = "reservation/{galleryID}/{programID}/insertReservation", method = RequestMethod.POST)
	public String insertReservation(@PathVariable int galleryID, @PathVariable int programID, @RequestBody ReservationVO reservationVO, Model model) {
		// 예약 가능 여부 확인
		return "reservation/reservation";
	}
	
	@RequestMapping(value = "reservation/{galleryID}/{programID}/updateTotalReserved", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Integer> updateTotalReserved(@PathVariable int galleryID, @PathVariable int programID, ReservationVO reservationVO, Model model) {
		int remainTotalCount = reservationDAO.checkTotalCount(reservationVO);
		
		Map<String, Integer> result = new HashMap<>();
		result.put("totalReserved", remainTotalCount);
		
		return result;
	}
}