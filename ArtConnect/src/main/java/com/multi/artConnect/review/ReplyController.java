/*
 * package com.multi.artConnect.review;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.web.bind.annotation.*;
 * 
 * import java.util.List;
 * 
 * @RestController
 * 
 * @RequestMapping("/api/replies") public class ReplyController {
 * 
 * @Autowired private ReplyDAO replyDAO;
 * 
 * // 특정 리뷰에 대한 모든 댓글 가져오기
 * 
 * @GetMapping("/review/{reviewNO}") public List<ReplyVO>
 * getRepliesByReview(@PathVariable int reviewNO) { return
 * replyDAO.getRepliesByReview(reviewNO); }
 * 
 * // 새로운 댓글 추가하기
 * 
 * @PostMapping("/add") public ReplyVO addReply(@RequestBody ReplyVO replyVO) {
 * return replyDAO.addReply(replyVO); }
 * 
 * // 업데이트, 삭제 등을 위한 다른 필요한 엔드포인트도 추가 가능합니다. }
 */