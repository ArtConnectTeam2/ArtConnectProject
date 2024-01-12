package com.multi.artConnect.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
