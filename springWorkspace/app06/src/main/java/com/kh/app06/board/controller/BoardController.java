package com.kh.app06.board.controller;

import com.kh.app06.board.board.vo.BoardVo;
import com.kh.app06.board.service.BoardService;
import com.kh.app06.member.member.vo.MemberVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("board")
public class BoardController {

    private final BoardService service;

    // 게시글 작성
    @PostMapping("write")
    public String write(BoardVo vo, HttpSession session) {

        MemberVo loginMemberVo = (MemberVo)session.getAttribute("loginMemberVo");
        vo.setWriterNo(loginMemberVo.getNo());

        int result = service.write(vo);

        if(result == 1) {
            return "redirect:/board/list";
        }
        else {
            return "redirect:/error";
        }
    }

    // 게시글 목록 조회
    @PostMapping("list")
    public void selectAll() {
        List<BoardVo> voList = service.selectAll();
        System.out.println("voList = " + voList);
        //return voList;
    }

}
