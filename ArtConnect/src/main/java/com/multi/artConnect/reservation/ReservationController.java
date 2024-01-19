package com.multi.artConnect.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "/insertReservation", method = RequestMethod.POST)
	public String insertReservation(@RequestBody ReservationVO reservationVO) {
		int result = reservationDAO.insertReservation(reservationVO);
		if (result > 0) {
			// 삽입 성공
			return "redirect:/payment";  // 결제 페이지로 리다이렉트
		} else {
			// 삽입 실패
			return "redirect:/error";  // 에러 페이지로 리다이렉트
		}
	}
}