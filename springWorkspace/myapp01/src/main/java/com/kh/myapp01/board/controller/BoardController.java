package com.kh.myapp01.board.controller;

import com.kh.myapp01.board.service.BoardService;
import com.kh.myapp01.board.vo.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
    @Autowired
    private BoardService service;

    @GetMapping("board/write")
    public String write() {
        return "board/write";
    }

    @PostMapping("board/write")
    @ResponseBody
    public String write(BoardVo vo) {
        // data
        // service
        int result = service.write(vo);

        // result
        if (result == 1) {
            return "게시글 작성 성공!";
        }
        else {
            return "게시글 작성 실패..";
        }
    }
}
