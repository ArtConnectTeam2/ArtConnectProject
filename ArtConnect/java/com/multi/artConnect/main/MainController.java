package com.multi.artConnect.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.artConnect.notice.NoticeService;
import com.multi.artConnect.notice.NoticeVO;
import com.multi.artConnect.review.BoardDAO;
import com.multi.artConnect.review.BoardVO;

@Controller
public class MainController {

	@Autowired
	private BoardDAO boardDAO; // BoardDAO를 직접 주입

	@Autowired
	private NoticeService noticeService; // NoticeService는 NoticeDAO를 사용하여 데이터를 처리하는 서비스

	@RequestMapping("/main")
    public String main(Model model) {
        // 최근 3개의 리뷰 가져오기
        List<BoardVO> boardList = boardDAO.selectWithPaging(1, 3);

        // 최근 공지사항 목록 가져오기
        List<NoticeVO> noticeList = noticeService.list();

        // 모델에 데이터 추가
        model.addAttribute("boardList", boardList);
        model.addAttribute("noticeList", noticeList);

        // main.jsp로 포워딩
        return "gallery/main"; // "gallery/main"은 main.jsp의 위치를 나타냅니다.
    }
}
