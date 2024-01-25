package com.multi.artConnect.gallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

	//프로그램 등록페이지로
	@GetMapping("/programForm")
	public String showProgramForm() {
	     return "gallery/programForm";
	}
	
	@RequestMapping("/programinsert")
	public String programinsert(ProgramVO_gallery programVO_gallery) {
		try {
		    System.out.println("프로그램 등록 성공: " + programVO_gallery.toString());

		    dao.programinsert(programVO_gallery);
		} catch (Exception e) {
		    e.printStackTrace();
		}
	    return "gallery/list";
	}
	
	
}
