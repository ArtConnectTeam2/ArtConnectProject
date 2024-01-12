package com.multi.artConnect.gallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/gallery")
public class GalleryController {

	@Autowired
	GalleryDAO dao;

	@RequestMapping("/list") // "/artConnect/list"로 수정
	public void list(Model model) throws Exception {
		List<GalleryVO> list = dao.list();
		System.out.println(list.size());
		model.addAttribute("list", list);
	}

	@RequestMapping("/search2") // "/artConnect/search2"로 수정
	public void search(String galleryName, Model model) {
		List<GalleryVO> searchResult = dao.search(galleryName);
		System.out.println(searchResult);
		model.addAttribute("searchResult", searchResult);
	}

	@RequestMapping("/detail")
	public String detail(String galleryName, Model model) {
		GalleryVO gallery = dao.detail(galleryName);
		model.addAttribute("gallery", gallery);
		return "gallery/detail";
	}

	@RequestMapping("/location")
	public String location(@RequestParam String galleryName, Model model) {
		GalleryVO location = dao.location(galleryName);
		model.addAttribute("location", location);
		return "gallery/location";
	}

	@RequestMapping("/like")
	public String like(@RequestParam String memberID, @RequestParam String galleryID) {
		// 좋아요 기능을 위한 Map 생성
		Map<String, Object> map = new HashMap<>();
		map.put("memberID", memberID);
		map.put("galleryID", galleryID);
		System.out.println("Map: " + map);

		// 좋아요 기능을 수행하는 DAO 메소드 호출
		dao.like(map);

		// 미술관 상세 페이지로 리다이렉트
		return "redirect:/gallery/detail?galleryName=" + galleryID;
	}

}