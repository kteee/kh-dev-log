package com.kh.semi.notice.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.semi.admin.vo.AdminVo;
import com.kh.semi.member.vo.MemberVo;
import com.kh.semi.notice.service.NoticeService;
import com.kh.semi.notice.vo.NoticeReplyVo;
import com.kh.semi.notice.vo.NoticeVo;
import com.kh.semi.util.page.PageVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.lang.runtime.ObjectMethods;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("notice")
@Slf4j
public class NoticeController {

    private final ObjectMapper objectMapper;
    private final NoticeService service;

    // 공지사항 작성 (화면)
    @GetMapping("write")
    public String write(HttpSession session) {

        if(session.getAttribute("loginAdminVo") != null){
            return "notice/write";
        }
        else{
            return "redirect:/admin/login";
        }

    }

    // 공지사항 작성 (처리)
    @PostMapping("write")
    public String write(NoticeVo vo, HttpSession session) {

        AdminVo loginAdminVo = (AdminVo)session.getAttribute("loginAdminVo");
        vo.setWriterNo(loginAdminVo.getNo());

        int result = service.write(vo);

        if(result != 1) {
            throw new IllegalStateException("[ERROR]공지사항 작성 중 에러 발생");
        }

        return "redirect:/notice/list";
    }

    // 공지사항 목록 조회 (+검색)
    @GetMapping("list")
    public String list(Model model, @RequestParam(name="pno", required = false, defaultValue = "1") int currentPage,
                       String searchValue) {

        int listCount = service.getNoticeCnt() ;    // DB에서 목록 전체 개수를 불러옴
        // int currentPage = pno;   // 현재 페이지를 불러옴
        int pageLimit = 10;  // 개발자가 임의로 정한 값
        int boardLimit = 10;  // 개발자가 임의로 정한 값

        PageVo pvo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
        List<NoticeVo> voList = service.getNoticeList(pvo, searchValue);

        // req.setAttribute() 에 담아야 함
        // model에 담는걸 권장
        // 그래서,, model.. 씀,,
        model.addAttribute("voList", voList);
        model.addAttribute("pvo", pvo);
        model.addAttribute("searchValue", searchValue);
        return "notice/list";
    }
    
    // 공지사항 상세 조회
    @GetMapping("detail")
    public String detail(String no, Model model) {
        NoticeVo vo = service.getNoticeByNo(no);
        model.addAttribute("vo", vo);
        return "notice/detail";
    }

    // 공지사항 수정 (화면)
    @GetMapping("edit")
    public void edit(Model model, String no) {
        // return값 아무거도 안적으면 현재 경로 notice/edit 으로 포워딩 됨

        NoticeVo vo = service.getNoticeByNo(no);

        model.addAttribute("vo", vo);
    }

    // 공지사항 수정 (처리)
    @PostMapping("edit")
    public String edit(@ModelAttribute NoticeVo vo, HttpSession session) {
        // 객체로 받아주는거.. 커맨드객체라고 함
        // @ModelAttribute NoticeVo vo 원래는 이거 어노테이션 붙여줘야 하지만,,
        // 안붙여도됨..

        AdminVo adminVo = (AdminVo) session.getAttribute("loginAdminVo");
        vo.setWriterNo(adminVo.getNo()); // 현재 로그인한 어드민계정의 넘버

        int result = service.edit(vo);
        if(result != 1) {
            throw new IllegalStateException("ERROR");
        }
        return "redirect:/notice/list";
    }

    // 공지사항 삭제
    @DeleteMapping("delete")
    @ResponseBody
    public String delete(String noticeNoArr) throws JsonProcessingException {

        System.out.println("noticeNoArr호출됨");
        System.out.println("noticeNoArr = " + noticeNoArr);

        List<String> noticeNoList = objectMapper.readValue(noticeNoArr, List.class);

//        for(String s : noticeNoList) {
//            System.out.println("s = " + s);
//        }

        int result = service.delete(noticeNoList);

        if(result == 0) {
            return "bad";
        }

        return "good";
    }

    // 댓글 작성 처리
    @PostMapping("reply/write")
    @ResponseBody
    public int replyWrite(NoticeReplyVo vo, HttpSession session) {
        // 화면에서도 가져올수있지만,, 클라이언트(요청) 못믿겠다
        // 서버에서 직접 검증하겠다
        MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        vo.setWriterNo(loginMemberVo.getNo());
        int result = service.replyWrite(vo);
        return result;
    }

    // 댓글 리스트 응답
    @GetMapping("reply/list")
    @ResponseBody
    public List<NoticeReplyVo> getNoticeReplyList(String noticeNo) {
        List<NoticeReplyVo> vo = service.getNoticeReplyList(noticeNo);
        return vo;
    }
}
