/*
 * package com.multi.artConnect.gallery;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * @Controller
 * 
 * @RequestMapping("reservation") public class ProgramController_gallery {
 * 
 * @Autowired GalleryDAO_gallery galleryDAO_gallery;
 * 
 * @Autowired ProgramDAO_gallery programDAO;
 * 
 * @RequestMapping("programSelection/{galleryID}") public String
 * programSelection(@PathVariable int galleryID, Model model) {
 * GalleryVO_gallery gallery = galleryDAO_gallery.getGallery(galleryID);
 * model.addAttribute("gallery", gallery); List<ProgramVO_gallery> listProgram =
 * programDAO.listProgram(galleryID); model.addAttribute("listProgram",
 * listProgram); return "reservation/programSelection"; } }
 */