package com.multi.artConnect.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reservation")
public class GalleryController {
	
	@Autowired
	GalleryDAO galleryDAO;
	
	@RequestMapping("searchGallery/{galleryName}")
	public String searchGallery(@PathVariable String galleryName, Model model) throws Exception {
		List<GalleryVO> searchGallery = galleryDAO.searchGallery(galleryName);
		model.addAttribute("searchGallery", searchGallery);
		return "reservation/searchGallery";
	}

	@RequestMapping("listGallery")
	public void listGallery(Model model) throws Exception {
		List<GalleryVO> listGallery = galleryDAO.listGallery();
		model.addAttribute("listGallery", listGallery);
	}
}
