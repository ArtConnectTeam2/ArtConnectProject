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
	
	@RequestMapping("reservation/{programID}")
	public String reservationPage(@PathVariable int programID, Model model) {
		ProgramVO program = programDAO.getProgram(programID);
		model.addAttribute("program", program);
		return "reservation/reservation";
	}
}
