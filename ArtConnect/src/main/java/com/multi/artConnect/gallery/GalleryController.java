package com.multi.artConnect.gallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class GalleryController {

    @Autowired
    GalleryDAO dao;

    @RequestMapping("list") // "/artConnect/list"로 수정
    public void list(Model model) throws Exception {
        List<GalleryVO> list = dao.list();
        System.out.println(list.size());
        model.addAttribute("list", list);
    }

    @RequestMapping("search2") // "/artConnect/search2"로 수정
    public void search(String name, Model model) {
        List<GalleryVO> searchResult = dao.search(name);
        System.out.println(searchResult);
        model.addAttribute("searchResult", searchResult);
    }
}