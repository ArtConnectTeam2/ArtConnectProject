package com.multi.artConnect.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reservation")
public class ProgramController {

	@Autowired
	ProgramDAO programDAO;
	
	@RequestMapping("programSelection/{galleryID}")
	public String programSelection(@PathVariable int galleryID, Model model) {
		List<ProgramVO> listProgram = programDAO.listProgram(galleryID);
		model.addAttribute("listProgram", listProgram);
		return "reservation/programSelection";
	}
}
