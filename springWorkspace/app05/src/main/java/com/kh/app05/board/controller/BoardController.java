package com.kh.app05.board.controller;

import com.kh.app05.board.service.BoardService;
import com.kh.app05.board.vo.BoardVo;
import com.kh.app05.member.vo.MemberVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("board")
public class BoardController {

    private final BoardService service;

    // 게시글 작성 화면
    @GetMapping("write")
    public void write() {
        // 아무것도 안써도,, 알아서,, url 매핑값이랑 똑같이 포워딩함
        // url 매핑값 : board/write -> 이 문자를 그냥 리턴해버림
    }

    // 게시글 작성 처리
    @PostMapping("write")
    public String write(BoardVo vo, HttpSession session) {

        MemberVo loginMemberVo = (MemberVo)session.getAttribute("loginMemberVo");
        String memberNo = loginMemberVo.getNo();
        vo.setWriterNo(memberNo);

        // service
        int result = service.write(vo);

        // result
        if (result == 1) {
            return "redirect:/home";
        }
        else {
            return "redirect:/error";
        }
    }

    // 게시글 목록 조회
    @GetMapping("list")
    public void list() {
        List<BoardVo> voList = service.selectBoardList();
        // soutv 어떤 밸류값 출력
        System.out.println("voList = " + voList);
    }

    // 게시글 상세 조회

}
