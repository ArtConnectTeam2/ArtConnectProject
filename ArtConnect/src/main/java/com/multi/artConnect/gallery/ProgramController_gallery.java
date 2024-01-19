package com.multi.artConnect.gallery;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/gallery")
public class ProgramController_gallery {

	@Autowired
	ProgramDAO_gallery dao;

	/*
	 * @RequestMapping("/detail2") public String programlist(@RequestParam String
	 * galleryID, Model model) throws Exception { List<ProgramVO_gallery>
	 * programlist = dao.programlist(Integer.parseInt(galleryID));
	 * System.out.println(programlist.size()); model.addAttribute("programlist",
	 * programlist); System.out.println(model.addAttribute("programlist",
	 * programlist)); return "gallery/detail"; // "gallery/detail"은 JSP 파일의 경로입니다. }
	 */
}