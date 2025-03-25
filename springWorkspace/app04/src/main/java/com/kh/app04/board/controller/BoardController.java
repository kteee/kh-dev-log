package com.kh.app04.board.controller;

import com.kh.app04.board.service.BoardService;
import com.kh.app04.board.vo.BoardVo;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {

    @Autowired
    private BoardService service;

    // 게시글 작성 화면
    @GetMapping("board/insert")
    public String insert() {
        return "board/insert";
    }

    // 게시글 작성
    @PostMapping("board/insert")
    public void insert(BoardVo vo) {

        System.out.println(vo.getTitle());

        // date -> obj

        // service
        int result = service.insert(vo);

        // result
        if(result == 1) {
            System.out.println("게시글 작성 성공!");
        }
        else {
            System.out.println("게시글 작성 실패!");
        }

    }
}
