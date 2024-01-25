package com.multi.artConnect.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.artConnect.member.MemberDAO;
import com.multi.artConnect.member.MemberVO;

@Controller
@RequestMapping("reservation")
public class QRCreaterController {
	
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	ReservationDAO reservationDAO;
	
	@Autowired
	GalleryDAO_reserve galleryDAO_reserve;
	
	@Autowired
	ProgramDAO programDAO;
	
	@RequestMapping("qrcreater/{reservationID}")
	public String qrcreaterPage(
			@RequestParam String memberID,
			@PathVariable int reservationID,
			Model model) {
		model.addAttribute("memberID", memberID);
		model.addAttribute("reservationID",reservationID);
		ReservationVO reservation = reservationDAO.getReservation(memberID, reservationID);
		GalleryVO_reserve gallery = galleryDAO_reserve.getGallery(reservation.getGalleryID());
		ProgramVO program = programDAO.getProgram(reservation.getProgramID());
		MemberVO member = memberDAO.getData(memberID);
		model.addAttribute("member", member);
		model.addAttribute("gallery", gallery);
		model.addAttribute("program", program);
		model.addAttribute("reservation", reservation);
		return "reservation/qrcreater";
	}
}
