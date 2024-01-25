package com.multi.artConnect.gallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
	public String detail(int galleryID, Model model) {
		GalleryVO gallery = dao.detail(galleryID);
		List<ProgramVO_gallery> programList = dao.programlist(galleryID);
		
		model.addAttribute("gallery", gallery);
		model.addAttribute("programList", programList);
	
		return "gallery/detail";
	}

	@RequestMapping("/location")
	public String location(@RequestParam String galleryID, Model model) {
		GalleryVO location = dao.location(galleryID);
		model.addAttribute("location", location);
		return "gallery/location";
	}

	@RequestMapping("/like")
    public String like(String galleryID, String galleryName, HttpSession session) {
       // 좋아요 기능을 위한 Map 생성
      System.out.println(galleryID + " " + galleryName);
      
       // 현재 로그인한 회원의 아이디 가져오기 (세션에서)
        String memberID = (String) session.getAttribute("memberID");
      
      Map<String, Object> map = new HashMap<>();
       map.put("memberID", memberID);
       map.put("galleryID", galleryID);
       map.put("galleryName", galleryName);
       System.out.println("좋아요 추가함: " + map);
       
       
       // 좋아요 기능을 수행하는 DAO 메소드 호출
       dao.like(map);

       // 인코딩된 갤러리 이름 생성
       String encodedGalleryName;
       try {
           encodedGalleryName = URLEncoder.encode(galleryName, "UTF-8");
       } catch (UnsupportedEncodingException e) {
           // 예외 처리
           e.printStackTrace();
           return "redirect:/"; // 실패 시 리다이렉트할 URL
       }

       // 미술관 상세 페이지로 리다이렉트
       return "redirect:/gallery/detail?galleryID=" + galleryID;
    }
	
	@RequestMapping("/cancleLike")
	public String cancleLike(String galleryID, String galleryName, HttpSession session) {
	    // 현재 로그인한 회원의 아이디 가져오기 (세션에서)
	    String memberID = (String) session.getAttribute("memberID");

	    // 좋아요 취소 기능을 위한 Map 생성
	    Map<String, Object> map = new HashMap<>();
	    map.put("memberID", memberID);
	    map.put("galleryID", galleryID);
	    map.put("galleryName", galleryName);
	    System.out.println("좋아요 취소함: " + map);

	    // 좋아요 취소 기능을 수행하는 DAO 메소드 호출
	    dao.cancleLike(map);

	    String encodedGalleryName;
	    try {
	        encodedGalleryName = URLEncoder.encode(galleryName, "UTF-8");
	    } catch (UnsupportedEncodingException e) {
	        // 예외 처리
	        e.printStackTrace();
	        return "redirect:/"; // 실패 시 리다이렉트할 URL
	    }

	    // 미술관 상세 페이지로 리다이렉트
	    return "redirect:/gallery/detail?galleryID=" + galleryID;
	}
	
	@RequestMapping("/likeCheck")
	@ResponseBody
	public String likeCheck(String galleryID, HttpSession session) {
	    // 현재 로그인한 회원의 아이디 가져오기 (세션에서)
	    String memberID = (String) session.getAttribute("memberID");

	    Map<String, Object> map = new HashMap<>();
	    map.put("memberID", memberID);
	    map.put("galleryID", galleryID);

	    // 좋아요 여부 확인
	    boolean isLiked = dao.likeCheck(map);

	    return isLiked ? "liked" : "not liked";
	}

    @RequestMapping("/filterData")
    @ResponseBody
    public List<GalleryVO> filterData(@RequestParam List<String> filterValues) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("filterValues", filterValues);
        
        List<GalleryVO> list = dao.filterData(paramMap);
        System.out.println(list.size());
        
        return list;
    }
	
    @GetMapping("/allGalleries")
    @ResponseBody
    public List<GalleryVO> getAllGalleries() throws Exception {
        return dao.list();
    }
    
    @GetMapping("/program_detail")
    public String getProgramDetail(@RequestParam("programID") int programID, Model model) {
      ProgramVO_gallery program = dao.getProgram(programID);
      model.addAttribute("program", program);
      return "gallery/program_detail";
    }
}